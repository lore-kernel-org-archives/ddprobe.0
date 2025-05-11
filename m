Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BFC26ADD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746999594; cv=none; b=L8sMMjktxBv+QxExn93sE1NZCYihXqIj25dBAbHijq1/GcLyHtTRontX6/4D62GNVEjqWotdIQKLDH6KdnC1meyWlpVN3rGRDSUkqdiRYWUlP1CNi0bHzS4zA6G4XV9gSjdSaF0ZlayDp08xEWK5nD0hE/ZfniFf1C9BXd9pxck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746999594; c=relaxed/simple;
	bh=brbGxkaI90XxoDCPylfFA49rKvTv0B0N5ZvngHgA1Tc=;
	h=To:Subject:From:Message-Id:Date; b=jwRqovGUzBasl+CyTJSW4hGXEplXKFIZpGE6A2Vz2wl05aYP3kR8elAM4K2SE4xDNf1A4Al8+Qk1E0K7lLpEJkCDs+In/Q7jb6sxEPZfHqHv2aQE+sJNWHNTd/IHeTuK1ICFLHoYZ2NJtIRIKymmbCjrZXkScZgzhyzo5+mpn2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn9MbdxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn9MbdxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1830C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746999593;
	bh=brbGxkaI90XxoDCPylfFA49rKvTv0B0N5ZvngHgA1Tc=;
	h=To:Subject:From:Date:From;
	b=Nn9MbdxFY+8+0W2uXtp2mG09TTHe8/F4LMFMfCtrS0FfzsDO1yWf2B2SdXjs8IFOV
	 ODFMlMuayG7yLGuhwC72MMsihNoRhI/NhNVGrK3sdCZFnVFSdPOlrl25lJ+h4JdYm6
	 fN0DM69rBYMXeLD++BRQPQ7almirQEyOgOR9d0Ct3ZyfFCN8/pkURsVmQ8pHyqNOaS
	 GADWxDcFXkwnv+RysJAo0TMoUukpNuxGL23jn+Hhj/L/c2PKVcMbl9jUy/PrvA8rdu
	 oHqHLYB/1asm3MaFXQvTI+Q/MPsWA0ujmrGGZc9tOuO/7Lzubd0fLYfyIAkYkwFfZU
	 nT9d+QADydUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DCC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699959357.2425.9881219007457659640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c9a5287919f40596371d17f286585c3984900b7e749ba48818a751c275cc62
Date: Sun, 11 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746999593
