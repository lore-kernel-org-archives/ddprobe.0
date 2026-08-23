Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C9425524C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787508034; cv=none; b=Fei9Qp1UaBPYENWciUenk5fDQsyGMD1e0uL4WuSs+4OWXRht+2gGrBjugLyQNFwYrHdzRvhHpBxUJOQhdlLNsxzONgjmgLN3ylVooYgGneCoUq76I5VT88eofEKda90ruudKNrtBefalGSQ+dFsHVto6pw9BqGqMHizGawFTrtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787508034; c=relaxed/simple;
	bh=jqbD7pjnLC0Sl+ls/qsukgLTGnAnQGTls6sO1eGV7uY=;
	h=To:Subject:From:Message-Id:Date; b=YHmnKdR5GHXvO82nzgAJhdsmnsakNiG5fyFOu1W4NqxRUyNnBvmVFdRfaMmKXnh/XDy0GO8ISz8ZrXEv6EadjZJi0kOeabXX19pRTFYjwafF484nrl5Wq9xXy4pGRGO0oXtQWTFzo7WaYtqxvZ+s0adIH8GvUiVR5yjaypQDXg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbyU1O5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbyU1O5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FC0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787508033;
	bh=jqbD7pjnLC0Sl+ls/qsukgLTGnAnQGTls6sO1eGV7uY=;
	h=To:Subject:From:Date:From;
	b=kbyU1O5viDjAlOB/JfFEFk+jC3nnSgDIXkNvTLzSCFxdfKcQ4X3dbgMpjxshHWllB
	 YStIdyeFaGp73op+RD+I2U9M7d37L5orOYHYNDzxmxczTFLwLudyxOCR6ZT8WGjbJh
	 x+iq8WZtgQ3iIAn6pGmxaagtREuTPU8jVhhWdKocWq960y5Cwt0B2JNGkgRXg8nRhc
	 cBe1fhGJ8kEQ0SZwG8P1RPp7yjV0OZpGPs6NhBP5ByXNFGBmqc6qy0Lq7l6z+w6vbE
	 85xq7EzBIoDKH4NH0oh3Rfwa2DUBGEZyTIGXYHDQuI4Rwe65q5wlXaVZrHXuEkZvIS
	 X1ji1hpf15VAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A55C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750803369.12519.2566175631202977227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42845201dbd35bf98ec780120ac3acf2ce107872fbe1f06d37fdbb42d51ded4
Date: Sun, 23 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787508033
