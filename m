Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6BE2104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646246785;
	h=To:Subject:From:Message-Id:Date;
	bh=EBCoqnXngqmVhI+mhTD1IVX+2J70EykBrLNhtnQcQt0=;
	b=AH5LpXTaeZzZJTY/VSC4RmsM1bptzK+7+mgOP+ZFuLa3CRopRyosGQDdTDwI6VfS
	CezKyVijPWawE9M/M7e/73P8L9grerfTl11WdbcwWdPxS94f0v/OnMw5dttwx6rnH0e
	zwoTr0OdllMT2VjMrwq9XYyyXsRlJ+Wn5R8+qdYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646246785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EBCoqnXngqmVhI+mhTD1IVX+2J70EykBrLNhtnQcQt0=;
	b=ZilJsnyzYkCjvKi3oghLNzks/l5yaM3RCmqJ0YyVYu5rm+PsWyqhr+/GmYEgsKJE
	cF9yuTS0D2zToi3EE00sXFY/Hwkv/z3vJIhjq6+I9svSmz/Oy4FOEdQ3kCS2V0HG1YZ
	H6TdYecIgVe/NMjcQu7Ek03AIDQ24d0+OYj/cQ5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4bf46f38-3db81a7b-a63e-401c-898a-0ea3944238df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dda33f286b2fbe30010be4c9dadfca4db5f4356baac9d6337c1f3333a65b9c0
Date: Wed, 2 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646246784
