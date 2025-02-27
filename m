Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF701EB5C3
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740638934; cv=none; b=YaGt2OM7dHtP32bELz70P2cK/KOeiQITyXvO5qBT3AXHsT6V+tXWNydLrNYhuXcoido2oJSxHU2a/UwCb0FccSsznlS/cPKPH9TTHSBfevmpGkQaC+K3QLN9gOVzX6YsEkiU1sawnnWeON/tcu/FABbLu9gcTAXQC4d3vPIxzkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740638934; c=relaxed/simple;
	bh=79n30HOtVQT4KbvtFPBUrMb6DVT7Nn4EUbiS49dvfk0=;
	h=To:Subject:From:Message-Id:Date; b=mO0ajMjNBwBr+9iFKkTThiOPMAkNEUXIHSjKoWQKYofW9vSc3f/DFciEltb8mPw+leVtJLVo+hzM6zTGHdMbT6s+WuTXu1Vaoo/pTKqp64vSpk/QWDhR6euiDkgfMOqWoX2YepSBxjNXwhXAlsVCtHxFRoE49eYgRWQQRZTWCYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqjZrFeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqjZrFeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B012DC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740638933;
	bh=79n30HOtVQT4KbvtFPBUrMb6DVT7Nn4EUbiS49dvfk0=;
	h=To:Subject:From:Date:From;
	b=BqjZrFeZAH2x0CJsY0Cu0UomKQh37m0nhUGPY94slgPHQoTYh0epq2S40fYKt9URd
	 IJOoo6lEE97Um68LvjgS+5yiZq92dkdDW65SCcnLfMi3jN7BplHniCiwWNrHLEqyZj
	 TulkpsYlGPPyN2twIIKvZntgTRSOb3LS8Jp1Y/7R3a9IFz4OcRPYnfuA2TvU7b6/OT
	 CmUp/yRAfzJl/vyDC39fdRmx7Y1VTxbiFrUYqdroAFAnElyQwK+6KotxfLBp1RPuBa
	 2tZCQm3BHDUy/869WhEko0bei0AIpd/uvpfNacULO3U6HKSZH2ND5HHsrClLatllvd
	 OLIAfYbCdVm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E7C19F38
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174063893361.8899.7944700287718966549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586e0ddaca9acafe58e5a3fe7611067c3017b3f3dfc399a3dba0719a1d7c589a
Date: Thu, 27 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740638933
