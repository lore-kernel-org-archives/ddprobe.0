Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB857B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645774285;
	h=To:Subject:From:Message-Id:Date;
	bh=dRjvRi4rwDQ/E9M0+tAgoqiFVqltPTRzyxutDmfmrsc=;
	b=i96asT3dXR68VRR3G+kNjWYQ1wlKLOmEjQVF/1F1DQEZMKyOmwhhL+y8Yczh0n+Z
	Sn6XHykhxnOIszHj9ERhhUw4fXNiRs49moU1sOrjLtZ/c2RJMRew6EFRS0+4+kFvHi7
	4tVqWPuacyeFx0KbIrBa9m/+u0hv+uszF2GsLhmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645774285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dRjvRi4rwDQ/E9M0+tAgoqiFVqltPTRzyxutDmfmrsc=;
	b=cZvW1/9fEWlHJczJYBVKlKcVTv29hUdGJ6MmTb3a9YBZXO21jcFga0wg5bKjDpMT
	lPhXGuJCXgwZ8ooBpA/iRgs2SHL7xgRhvF7AlBc7ykCZTiUe4wLlKXVi3G4Q9V7EwKe
	RRkPhLsaMkXC2bBHDNqCnwnRfYzS2xnL2zKySTJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fcaa82b-d09f47a0-fd6b-44f7-b995-7ff69b3ad2c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e76fb91d33b6652a9388eb80089bb2a35da20fdd9ffd4d5ad349ffa3f49edd
Date: Fri, 25 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645774284
