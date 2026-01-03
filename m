Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E5721B9C0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767440634; cv=none; b=AI0jocSGWqEpogze0au0h2kqj0b+gV8PeA/YK6rfdglpSQ7OBnXo1pFiTG9pxRXPqQpz/5w2neh6c02srYA/R33S9p/sV/XPXYRMcTyKuvjz66zJCWNLBw8apcG/PcocCPGPEFHqvGGo/dQ0QY8hkfsvnGnTayJkE+Ta4SGUXX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767440634; c=relaxed/simple;
	bh=EegCj8tDtDV6Pp4MV2fHfwpV+67xKEugTFqlMiD/Lfk=;
	h=To:Subject:From:Message-Id:Date; b=BCjr9qiwu8DlO9OjvsZEYW1ZxOiLZnfVwBVfMutE7wqxlayzyNaqOwc0giXolRF3B3fynk5nvZVt9G34hWL81FNl9DqrW2idoDoAsFAUJKzcAKvCenkI4gBixD72zBVRtML2sK+L9IwpaYSNmhJr1lbuQYzxGDh8VEJWL01aGug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGnqNH1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGnqNH1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4F4C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767440633;
	bh=EegCj8tDtDV6Pp4MV2fHfwpV+67xKEugTFqlMiD/Lfk=;
	h=To:Subject:From:Date:From;
	b=HGnqNH1DPKMPL5oAOV8FGcmj0wj7g0vJpXUtr10Jt8+xttP43avLODtwRhHix/dXj
	 uQa0Jzo645UG2oVL3ZLz/6vU5ZxYAoC4kHuhb5yX5WQqwYs9sEG9Bd8wv7EHB0YrjU
	 f/6tk91KkHTil6b55AgEm6O+cSLZDtHumWtnHVTXuFTjL8s8sBPjQp0+SkxIfbJreQ
	 HBKgqrWPI06ITbofR1GOxgYXJeV7ipbQVFG37pxQf4e6Dl7UdW9wqE87E5yMUpzeWE
	 5LVPP+CsNfT1u1suoNhrodIAvWyNzbEQlr4GqOqbhh4X5BPcf4w02GpO6QrUZbvptn
	 3bB94Lv3TbaFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E87FFC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744063357.11143.14070023711854752564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae899f1d37a000e1d55b096b66638beaee5275963cb06e372fd774f403ff381
Date: Sat, 03 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767440633
