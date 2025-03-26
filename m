Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BB715990C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743016794; cv=none; b=dxnhDIlprOreSnt6Z3PuE4mcpKV/N+0pHHfcqtR1fVglYmnlMuD/re8UznSmNUuVf3wEHvV7X+N7MozJBN0x+1ZT+MJoUuJS2kN0cUZ6t8O3zajASDRVSnagoLyqCORTjxrdLz6oqqGvsejD1/moZGjIKIYmKqbJFKriPOvvUNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743016794; c=relaxed/simple;
	bh=bFCtWSRgulFzCy/oe5M0FIEJCQxHHxD6sAjNGe0cJWE=;
	h=To:Subject:From:Message-Id:Date; b=hV+wMYgioTmtrUEJXLGqwhrcMwJQOCuDzqu4bNa0HwqHkHCXr1LPO5opdg0fj8wlce4x/wb4YzFv5AOG3avf0FeWlraNbrPGez0rAG0okdeYCZzUR1wJMVUXSF825hxnp5GFeOmVxha5MVa6Sdt0S0/q/vIhornv9dbJ44OCCxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FG/LXVe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FG/LXVe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF69FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743016793;
	bh=bFCtWSRgulFzCy/oe5M0FIEJCQxHHxD6sAjNGe0cJWE=;
	h=To:Subject:From:Date:From;
	b=FG/LXVe2sP6HxqednJmii6Citdv5xQ28QJOKbqCXtaaOglk+PJjJM1WifiGSsLfZV
	 cSer43yoFZs3Mbs1E6FnNxtz6pdyBBGgYdmslOwmh4bj3JYfppKXT2MjgCHDw9TT3S
	 JWc+JGuPdNY3XnJH+9RiJFh0Vr9c8+24/p27deUDrX1RBJrxKe3eRtz6I3OKZ0SphK
	 dHk7FZx+6qtO1N8vn2c4dkRhLcTU2YtQ894euGgHn5xQP+RgcnEAJuJAnTJsP+gsov
	 NywCkqrNiQHr0LF60ctvz2Bn3B7tSfXvAhf+RmxuBetsD6QYIbNuqicSZhTTYlpMMM
	 r94hgC+SIS08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB6BC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301679362.25888.6846564675434452258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6771d095f9b15634e4abea385b500815578a1c2c18e0a4ce7ce9d21d1d4088
Date: Wed, 26 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743016793
