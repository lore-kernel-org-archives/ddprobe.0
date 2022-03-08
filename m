Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B41D437E
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646732785;
	h=To:Subject:From:Message-Id:Date;
	bh=twU2KHcdI3dblndYcmfW8bVqD84ElCgUAO3D2fHv2CE=;
	b=AEw15nKp3AldbzJirt+wBaOKHwKrB0Y/tgKResv1NEsUdSSx2PnbJkfFPLb/0hr6
	BLP9FcHeAMtxtdQXR0goBR48s7GqKFSK5dPRaH3+heOW+yKT+fhCyYBg1mdqmngJQPt
	jmn3MA1sRYtic2jjMUWa2Simm49ztf6KuYG7elQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646732785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twU2KHcdI3dblndYcmfW8bVqD84ElCgUAO3D2fHv2CE=;
	b=HP7H9YfuYOjNzIQ9BaaMiFhyfFF3TNgyxJ/fKJp/V+bWP56TDbsYNbGRVrrnmPdc
	uORGuEFyZeZJKJ7vHlqpXpU1Q8nKIo16JZ1IogYTlQmhZmK14PQ7hq7vyHyvsbLghSb
	Tpfjy78wma7qZAAmaDwVyEpVwDOtEdsaSdkEGDec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f68ec34d0-c3de0481-d081-4be0-9277-1489eff467e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 109f43ddec85d300e9643777b2dacdde57175fd72df20e25412f0e70782c6ee5
Date: Tue, 8 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646732784
