Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6340A3B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646667084;
	h=To:Subject:From:Message-Id:Date;
	bh=01SnAnCuu4uYmT0pewWRFzY+kK8HYcqkvE/tIh8Iz/E=;
	b=ZR5CXCNpeGZP+j2IAumhhg7CjzuZ2KpqFzOpqfoq7yy+MdSvz0rgoDH+Rbb4b7vf
	2O+lPx/KUe1fp0ltEIV23BCycZpLz7/owsl7GA+soxdIPtXq881e0ZipzyMlgfbthes
	zKR0dCOjBb9yWpRMdMhiP0tzyM+vgMGdXxbcqMLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646667084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=01SnAnCuu4uYmT0pewWRFzY+kK8HYcqkvE/tIh8Iz/E=;
	b=Nan13DzGWg1W37y8HSks6zwov4UYaBqSaqmsWM+6ivGdebEn93fT5leIsriwoDHT
	pem91i43t20cMpSyToloRFmx1FC2uFgc9YBOGoHtP6zYg9ADol1EgxWpLH4H/VvHZwp
	rtOoNBUUMIPTVP1ppMk4lP3FDIX9fpQOrY1/qxg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6501b3bc-397c8377-7c46-48a3-ad6d-5351c15cd828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8230d8b3e6be35850271b8b7c4571f56a15244fea2205a4d1acc396b41aff4f8
Date: Mon, 7 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646667084
