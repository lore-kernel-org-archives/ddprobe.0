Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C0C12CDA5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772498694; cv=none; b=Poy2UBQORSNjIT/4bS2aurnng7z10sOS9/qe4toPlMblYRZ0h5hAcqWiukg5aAs2QgP/nXzY+1SHCRh03fKP8JPINy+DRxFCyjE2qcaK6BBc5qBwxcAx1EgY1cnXOdaTEfSdpYzmRgzmqIcUfADSGDLA0tIgW9wT/hhj5dfOHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772498694; c=relaxed/simple;
	bh=qqx8J/+kCNlgj67ePjQl5vy1MJB1rPF3VZVEZ9b95HA=;
	h=To:Subject:From:Message-Id:Date; b=hx1nSguSTa+7DcW8SNUUwcmq5ONLk2kckiMa6xZNY19Rj5PPKbFukrDMXWq2So5YQ0C84b7VutCTZigZNHKpJKRMSBUPs/X4cg6XLARvWO2mOb4HDxtZ18geJtLEpmT3I2Ogp/RNGPJD9G1eoghRkXRaCkNcuroYudofbFQJIyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfb3lefr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfb3lefr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD10AC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772498693;
	bh=qqx8J/+kCNlgj67ePjQl5vy1MJB1rPF3VZVEZ9b95HA=;
	h=To:Subject:From:Date:From;
	b=Bfb3lefr9Qgb9RJC6nbFpNtC/y73G56XJ1AdsHNPlcm6/pZi8CnweeJcgkjTBdPAA
	 nnK5XV9k1cHjY6YwU/zOFMzhV4irsUjefa9p4Ty6xDXqtsJX7fIRdmG6/n1Y81kW4z
	 nUuSS5INBsj9/dKd2N2SkcmdW/I/NAHGHMPX5l01k2H5gXBzBftPQLOUph1Y+xbwEJ
	 w4p2PhdWb+VZkV68VpNlik/V0WtLXvycgl5JsjBtiGAm8BfTuatG/AVMIs8rzUw95C
	 MUiLvaI5M4KWx3fMfFQ7FGhFbqLZNgLodce+h+Jc/n/9EgJT3bFtDdTFWiw62P7tSI
	 bRhjwrgQJYQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A832CEB362D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249869362.9598.3349971545880783026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa31821345450f350728a3ce9b3fb33667fd947e95fb3f7e76845534f6592a4
Date: Tue, 03 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772498693
