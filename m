Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6146C57F2
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645329684;
	h=To:Subject:From:Message-Id:Date;
	bh=kf8Xx0p43mlDBKrAkgzBd7ScKFvcSlQN+dJbAWEmN6I=;
	b=DLXrXbZdf4e7Mg4zL1Y60JRMGs0NKDaFR0hwfcHl3PbgwJZQ7t0bueTfsogmlnxl
	ODeJPzR+l2xHJUno+LRdGF1j1lPp7MnytVmUr4y3ktEcW10pN4nnA3zHEn6G0CDx9AS
	Z1/2fRPQ4BuP71FVF5xx4HRQLpluYMY14hBNGTOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645329684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kf8Xx0p43mlDBKrAkgzBd7ScKFvcSlQN+dJbAWEmN6I=;
	b=VZk9+kqEiOeLf5ydEJbjPA2B8cLkJAwiUYyQtTVH5Acc3anYIGACdIFhNfFHR84t
	YpzVvwzbRbJTqUNNKk5w+Jtb+57e94TtiqcElpbUmBhymgtZt+m45Lb7klsl1rShr3d
	zhB/GvsmZjv8Vxw1Ga8HxX6zDtW+in1ej40SY4Ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f154a991d-60c331d4-cbef-4d2d-9900-00a4483c014c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e65bea2818b8320f3ba52ba7b723d5b1085fb2cdb021722e189c66e63a45a8d
Date: Sun, 20 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645329684
