Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7B1E47B3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518994; cv=none; b=tjwBaBgs/Hgl2BaHN0AWfdp28rHJxlKazsfF+5Ol4yHMMvMrVocw8RNbT5rLtcgxNLzv2EkKiiDNRhnKF+RGg/sqG3NPK7ggqhSz4KtBHJD/69pzcRnOPG/SnFfX9ViFZNunWpVymWnG1ZBr6X9pwCai6/N8ewcDH4f+F4LoCQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518994; c=relaxed/simple;
	bh=ebCcm3LDw3YnshxVs0vNfkCzm6M33FLb0zUJtmB9suw=;
	h=To:Subject:From:Message-Id:Date; b=UhLBo9U84RWRBOKfRR1ZhG721aFh1BA6uip+zULtU7IXDvMScZwOGiIEkoiZbeqnSMSiFxfWismnaiaU46tCXhM0MXlrwV/YfAmBLlD5UR25EVJhm1Lp6K6jgJp0dyRC7nTd/W0oI1bHwSfuTWll54fFeDShiE2cAfbU64LuytU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrAxhBeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrAxhBeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F86C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743518993;
	bh=ebCcm3LDw3YnshxVs0vNfkCzm6M33FLb0zUJtmB9suw=;
	h=To:Subject:From:Date:From;
	b=HrAxhBeqoGOvQsbWH4aZE6s0TFijyaJ2YSNrM7sW3eg0gNmt3IcniZ2TcDCb07Yp6
	 o9vezCFgaN2Yq7bfa9vMdaXsoSoTUDSVktZDWa2p/b4gw4ife/ZUFj5xlfZTq+/dsX
	 ntDj9ou+9WDpICmDl73EEWlaL/vAC8F9/Mxrx8SV8rFE7kCICf+TykG5vkxYkw9iZC
	 PO1MPFcaOddpXo1YJQjKs+gZZ00azcziaCitNMsfjs1q1HKBFL/Snl2nTYZEExKRTu
	 ID6i4smuJEacZpUi/4+kAagjVS9l5MY5Syr7np96BR6A1w6D3Ge0b7y6bhHEmJHJzJ
	 +Ls4GsLo5bzxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111EC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351899358.13990.15469561339726636758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0bcfc9d2c772f45564d230509aa63238bd73118f56b05ba22ac4d62b355598
Date: Tue, 01 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743518993
