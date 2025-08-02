Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262688F7D
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754122794; cv=none; b=OMk3e2Dxxuq2hastADRA9oBSrHmUNIlFNutE9aPKkQI/QI2SK3CYckLbYRIpxSCiqS4rr3pWHF1o/xnN1cb9dK4DBODNCineuZOUkjFIdTWlg/4oFN9152IAFQSIQvwhzfbl1vkeKbqGHk7GvSy/87Hq8UImQmiR9rvvHxleSWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754122794; c=relaxed/simple;
	bh=mTNgJHCLg+TiRZW9hVmt4ZkKUQRpHgau4ZBfx43ZGKo=;
	h=To:Subject:From:Message-Id:Date; b=iEwWr1qmjPeqwConoMcoauirjlpsIfeRc3BnaWletF5rmSnFEvQnKwxidNiCPEQVohiKXSXZF5m2cWepKdFVytPFzz6CeV8ItEUCmHPOF7UX+9LvDBR7+puc5Hy5V97LJ4dVfuIZiBswha2QJ+vp/oA0PeD6I9N1ySKioHpIeic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLQ3JZ0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLQ3JZ0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A4C4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754122793;
	bh=mTNgJHCLg+TiRZW9hVmt4ZkKUQRpHgau4ZBfx43ZGKo=;
	h=To:Subject:From:Date:From;
	b=hLQ3JZ0/ImjokzKJacfm+dWppvONn0InitCZDyOF8SrQt9njcRaDYwGx35pEqAaJB
	 KzOb1i3sSU+jvfjtKed9sVazVjaGRzPZd8LPxZ/lXowZ1n6ONybScRFVYdWXYjX2cm
	 KKllpDdVzR/O4QGRkKVahcKMgmDK+3A/5uDAlRk287O0aWDT4jRyopqDf1/4Q0MiTk
	 AN0eQT/H5GsIBMKhwMpZbUFmZDl30h04nb7oQZtjetRPvG9XGw7rcQFfUlvoFnZDLY
	 hbedPadbEnGKEi38UVjU2WbPsTYMiHITLMO0jwoK4R5aeKmDKVaictPQhSHCpkeMiN
	 m2eNtS+ajPHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA6C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412279358.13144.9837339662313201822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c080d38b0e8827eed91341f6372878ec2360f1bf8596b0be262379c093c58efc
Date: Sat, 02 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754122793
