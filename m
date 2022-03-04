Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AD73A33
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646383885;
	h=To:Subject:From:Message-Id:Date;
	bh=+HRik3wrnISVGMd5K/sogLGO7co/LG9xKMkkTfLx6S4=;
	b=kQhthn5SXnuOJ20GsrLtf+lGQOmNZMXjr8lC061YAcX0kSpRYX+of7QOVLvnhKuT
	PCf6La9R3WI6IqOwhB1Hg9iLF9YBngtzgJ7eRUxjBlWlSnYer5hgnV1aRjzuNb9GGOF
	hj5m6wQzDUQwFCOVEpICB9so350N3qORavdaEa5g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646383885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+HRik3wrnISVGMd5K/sogLGO7co/LG9xKMkkTfLx6S4=;
	b=gptGlVPMV8puukaZKJtB/qzWAZ6PK31WFUfhJyAKxthL4ph9sPFJwW/DA6fGVv1w
	AEuic5/2EkNy41PqtWl/i7Uaq/do98CLo8qmFUYz0giZDtU02J1sJh+KJhiuiK3nv0y
	jQKLfdxg2plntDciy636WMAqwJgOQ4fYqAhUrXQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f542069b8-051819fc-6ed4-4776-87c5-766a901ccad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 306a850f759b8f31ce2289485fe23c68ef22d4f8ee9850e234800dbdc229c39e
Date: Fri, 4 Mar 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646383884
