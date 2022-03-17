Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51884378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647531384;
	h=To:Subject:From:Message-Id:Date;
	bh=5rUVHgj+yl8NjodS2vfT2yI6jWwq5J3G4RZrKEUCspY=;
	b=THZZWkZmKp9f5Xn0rNqXbCQNlVsvTnc2A2dAeb0P6nDUs2mZpXdn5H2wjb6ZXhfX
	r3dUYJdk732h6S4g87ii0zjs0i8Io6whSc1MKpMGSuMaL0851UgRvnYPWZt4Nqgr/Jk
	Cy+z5XLTJJWU3Lk8g6mEdHp9fGYRQwXHFEbFlWnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647531384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5rUVHgj+yl8NjodS2vfT2yI6jWwq5J3G4RZrKEUCspY=;
	b=JlgO7phqxKGaWBuKNuRaneiJ1whThn5iYoZhET6LUzuYXxIjP7H07jFiVDd4bqXO
	7Ue1FjtU4wDKnuCtIs3imhSg2wH5ioLszKBtgsSTzK6zjTmmhvYUtqB6UEDM4wUM46i
	5dyT91eg6W/j3VwgGIgTA39fTKqEN6+PGkHk2qKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9885dfac-f2391ef2-ed60-42a4-b000-fc262a8f96ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0e1ac731c72c9965a62ff4fe9b83bf8db2c649e7f54f8b58dba534b416be776
Date: Thu, 17 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647531384
