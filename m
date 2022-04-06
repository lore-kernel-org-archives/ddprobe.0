Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04C47E
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 06:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649225038;
	h=To:Subject:From:Message-Id:Date;
	bh=i35tRdLLlgn0Hq96tRtW4BpPM+tXDjskRVZEDOns3GM=;
	b=mIUVjSNatBmzSAeGloKGAt2OwYxSdwClMgWhLtCm90hUjo3LC4imjJkL1Eymt5qG
	SsChDuxQaMppVHi1LFW7B7yo4KDThhOAd3TyVIZduVMYeBJjKo50S3lFSYRd43J0+eC
	Jq5DT9Y6i7psxcqaOVUSMZLsPo3WmjfofuNvMDLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649225038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i35tRdLLlgn0Hq96tRtW4BpPM+tXDjskRVZEDOns3GM=;
	b=S5E56o4qiHxgVWyJAlMmBgosd5AwXvtTTh9i/tMyJXALCvfxzuf3Oje+4EeOZQY/
	Fln3ytFam/oTuLr1AUXaPp4j3seboLm6iO8zxOxioiOwE+/oCv5U/TgmjJtMoXj3f7o
	yfPoMTVgSdzyDXanjqcApuZRN7P5efiFsP9f44ZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffd78f9be-263f12b9-0625-4701-9eda-b9bec83d8371-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d5240d0f22225fe9ab165a77737aace023f19981ef82cc81645c32fe83c9f85
Date: Wed, 6 Apr 2022 06:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649225038
