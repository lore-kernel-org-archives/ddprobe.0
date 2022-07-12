Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2672C7A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657621012;
	h=To:Subject:From:Message-Id:Date;
	bh=SgvmW1DrklrIQnTAkKlydjTBPHyNt0Pe8TFN7mS4xZE=;
	b=Wo4ndrj4OMhF0F5dRCVfBSeg+OS5xWwO3RlulbwobSaJWLFIAd5/biVH3Jluf0Hq
	OSPAvbjGjo8Ryn1rRg2TwDmIGwTBQb1gHnLvGGFZ4/GHcs53czMWijdELuWTuNX8MOd
	2G3/1ugCB/9ammK5sj2X/Xlj5G7ATF20BJ+nZJLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657621012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SgvmW1DrklrIQnTAkKlydjTBPHyNt0Pe8TFN7mS4xZE=;
	b=QNNsdBVmmyBq799kDX/a4KdNRPTmWIsuRhIkjU5ZT+Kd27fC8HJc6rHAM2KCul5T
	9kvkdwd8brPxaIgq0OGBfaD3N4U3UNDFtV0K1cLESDBdsXN3RYsFpiDID3na7sA1leC
	jSOinlIpRufJcykrgcspzEHB2EINw7lXqTTiKD8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1e95f64-880ad5ce-f289-4a8b-bb2a-6e64d01f420a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 084769a8beee77bc8f04936d58186cdfab46ceedd9dc4eeb0c30dd4565825c44
Date: Tue, 12 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657621012
