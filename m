Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA4D223DE5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783742914; cv=none; b=fxCFhKanbMHRTMtwHHJfgRODh9ScDrxoJhuGdnNx8mFLx8UbFMRNmjWIbRca9jmGMl69EkX0TgxPkw/475T2bgZiA74BT38hI5f+eHFj691+0UcODGXwxYngrCGeO3Rhri2Mfv7izljxf70z04favgZAh0RdferFIEwEcrcqwbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783742914; c=relaxed/simple;
	bh=h0bGjj6CBMIDseyjLkb5C3CufIe5UJiTAo/P8prMNoU=;
	h=To:Subject:From:Message-Id:Date; b=M2tIRDouR/VtFf7RpGZ3qY4sWgLSu2jX8j9DbdBFWSSJrqNTmWXtI1+c44sNrAuA/MXhyE+GwmEzR6+5Mp4cc3YbV09ZIcfMdf02AYXNq4ZekgBxQRqASIeWK/C5VryAE50m9DhoJiEdvSPxlwxAH1eMDKsTXw8uh6dEIdySvv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLg3K/tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLg3K/tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F6DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783742913;
	bh=h0bGjj6CBMIDseyjLkb5C3CufIe5UJiTAo/P8prMNoU=;
	h=To:Subject:From:Date:From;
	b=DLg3K/tpiubyCcBHM7KDoTw4cKRLZ1g57ChqDuEFj2dB7ogTQ+iIPcuohT23ER1RN
	 KrDEZ/WNjgOCeXpahk5QIq6I9z3EAz5hbv4IxxoTpV+csxtNM+A8VgROgT0SNH1k86
	 FbEGdKkOok6tHNk/fVYuwpp1qSyUwWrAPaMARUx8Y3YhE2enu4cyOkkpQ1ed5t0EAz
	 xnAjQYdFuvkg7dquthSa3fCNM8aCQC0lsaCQaLaGQJQGhI0JJG/cj6HxN5xt41HRjj
	 KqqKPYL33M59cdDTJBVBiG8s0zmFA5FIPtE4D4RD51/eobzh3AEr4rK/QKjQhYWE7g
	 xmRRr8UZN5l9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A0C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374291369.11419.14883770130995543768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106eb82fd68ecd646cd8fcad25f58e40ab1cdcfe0dc27747b681c6302b380242
Date: Sat, 11 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783742913
