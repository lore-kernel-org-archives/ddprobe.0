Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E485536120
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712412497; cv=none; b=Pr593A+UeaUk/BX4hEhfZpgY+C6ffgTTrH9o1ztXp1ZG7VFLG4kYXwwptvWKWmd7W1llPKa2NdJpG+SmnLnS30KmP6TkBtUH5IhQVEfAd8oiVCifkMSJGvEb1keEeaSRgK4i1cQA0Y5LbuPoepUIF/OvfvYf2JW5CmvV1JSoquo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712412497; c=relaxed/simple;
	bh=4LV48Q0FOTHeubFLDGZRmwIoVUYGDit4YPMK/Fo0fBU=;
	h=To:Subject:From:Message-Id:Date; b=dAJCiJEyNBMTb4BPQzyRradbBDXt2T8U8dzqx5PIY9r06HW49ykjGPtlAz+AGNWkMt8p4YoNBr3bDTfvodbUqYDvSrn2Eius24+3ik/2jTe8jQ0v9jPr0plk66RYa3L+B0zgJpba76vjTElwrq2rj9zcFGG6eu/Cq5Kloosa3oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpPxNAvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpPxNAvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B61BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712412496;
	bh=4LV48Q0FOTHeubFLDGZRmwIoVUYGDit4YPMK/Fo0fBU=;
	h=To:Subject:From:Date:From;
	b=lpPxNAvb1Cl6d8kAfjG1jAMO9oaqgvVcL/2kqKAR/C6ibjlbWWiOFmCJQXNqlmt24
	 bAyyNVP7lnvmK0CdqDn8nkB61g1K3MKDjgh5CMoiax4WaWRnHwHcdjS2G5BnzHwDTB
	 Pyf/L4fhym/mhlfpTueEos8GoWiXOthekCL+1l1XAYcqngOlMtL3IFBHwiZ8dg4LGk
	 RGBw1FfLKg7+Ql/NJ3rkzKSCh8aORWFDVWgAFsP+GGDQ39J7KoPQaOei8ujBkKE8/P
	 Dy2ZYMTT1fOPd2bdmexQ90FVpwjifdI9g3BQIsDVOtkTtYzdPXQhkRza3huD84N8LD
	 TGAgMeWaanLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B6AC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171241249640.17551.7802826468369478697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42fb5e27655de775bd233e6c189adc7f7edf22f6bc92a3c0db73f45add199db
Date: Sat, 06 Apr 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712412496
