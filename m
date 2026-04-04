Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377373A874A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775295934; cv=none; b=J/ceX0OPM8aBLrqdlQ+E+moAeZmIqB0TPPIbxjywJFDcNolaV3/ML6mZkG036by9or1Vl6ZLp26NSNWT02rRMlERi6p0yvJ7IYDWGdFcZUTizz1FGfp/Ur0O9A3GGrpqgOZXGfG4EN6jXd/IR0zcEO23C/yf2VcyKtdpHR3cR6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775295934; c=relaxed/simple;
	bh=Z8s88ZcCGcuh1i9QqjrY5ABlJrpClTBrgqU3kUqp/Tk=;
	h=To:Subject:From:Message-Id:Date; b=a2s/W+lYGnLbPQk/a83sr5KVktPMYATPZfO0YnkX+RV+f23IxRuwhngTsxiklEq5VR3pCWFNGTFBo8Yt8mqOA68JTqnAs3kFSwm9FkOKUFjpW3iveNQNYifb5EXJAYxeiGLH8JaEuazXKIMCX26ZK86QXWBkN2CbVfAfupU4yOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLpbbO+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLpbbO+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7C0C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775295933;
	bh=Z8s88ZcCGcuh1i9QqjrY5ABlJrpClTBrgqU3kUqp/Tk=;
	h=To:Subject:From:Date:From;
	b=nLpbbO+YfFze4mfq+mutPdE6HlUzUhqVGmChQQX1lKzFX2PriSiTzTASZLBZDBuEy
	 DV0U5WZebQqdEMCWT4T7aQKIiKChavWBDV1idoJMYJGzKmi7eJsTrMsC4AIs14+/g4
	 ZkhFPjQkE2MqOaONFy49NhttP0lssh/oC6piCHjUj+b/vCpfU870VtHlgcXI9JiAki
	 8srxRfumGZqgmeH9SOS45yu1Rsm3yt2hkuZD2uoETEvKZNSYKcrrFbVSY/al582oEb
	 erwD7+77Pw4I59wNMy5SRfhmOGEFf7P2igcp+oSPIAAa46VLx6a5e7XUxTvYuzhKNT
	 uY8jj+Pm8SwXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31F2E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529593371.7980.6815781562293666542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed57bed335b27f71cb25719eec71595f666993f1ed0f06262b189f51fef699ba
Date: Sat, 04 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775295933
