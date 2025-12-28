Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D62E16EB42
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766954034; cv=none; b=qQhMoQq6i0aqDQi+cJiQQvB7rjhPJZ9hvR+DX4cQbtZXf0f9MwZRsFB3nR1BghjM7d16HFn+yzSpcSxyGB6RglJ+MtNI8UxHLIL7O5XqGlcmNxIwIfP2EeV6vCRamsm6FArTb9j50osKNlcjNLrl6QjsQENrqnuYFlohC9xGTSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766954034; c=relaxed/simple;
	bh=aFIXKbmZaWgifcWsTAFySZStYsRWIKTkDCzbgQkbo+g=;
	h=To:Subject:From:Message-Id:Date; b=lxkjBiqeX9bH0D+EuAy4plq6sNdyE6gkjp9tjwA8hFygGvTSjiuReZx8Ukq1UUt5NLyEIS8c+pozt/QOsgLdyLoz/G5DcV29v27GUcLhm/ShKLR/1n2l8netNW+NX4x/rhB8497+mtFdOas5qbOXv56jHQIf7Nkv3JFh+tqsYJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/xxMhXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/xxMhXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC52C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766954033;
	bh=aFIXKbmZaWgifcWsTAFySZStYsRWIKTkDCzbgQkbo+g=;
	h=To:Subject:From:Date:From;
	b=H/xxMhXltvaXWTJlQrPlvhF3mNvFb38ocDvE8SBLpjUVhR5lRf9f/AHIv1Y/sWnTW
	 E84LBS434vQFrAWOdCt9uQQ/LQsvzecUSBf/kpjLEIiWdyI6NbRRBzBDiA8a/NkG3E
	 IvR3dQSAMDJNPCEAXsx2PlArMyxkKXJ3nREdiVmY0Pi4JVFBVLY2g4bklhd9NOEXQz
	 2/Y/c9AzY35E6WHwgUF+zNUrn5RXw9ivp/d3IIpWm5vPsjZBqZviYFqxDDjsGrnaty
	 41CysfsbfJtN1U87F0A9DQTFUpdBKHpiT/a7vsx5882mNbXw4qT+TXZ44jydsyHKA6
	 gVSsnVaUck2jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCC2E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695403360.10418.291948234554654180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce1a8cbab085d3708dc8cdaa0e68b4473afe424cefaa0278e4508bed4843140
Date: Sun, 28 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766954033
