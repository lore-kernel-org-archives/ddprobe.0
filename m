Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABB927FD7D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765469574; cv=none; b=vCWYfEhTldjHcUKUD2yFJBjFhAVmCplOi7L9XZiCVmfU32zL/pr26SmmXzK6EdnAl4bycDEG6VjCo0+LATgRvsV4AZR9H+CtAI0aAsYNq60kK0xXdU90FLhRkMwmsQEN2bY5CllIP6JdrB0tEkKn61YvV8MkQPAUjCuxVbcpQnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765469574; c=relaxed/simple;
	bh=RYPcWuYoGGXtZhHMWGxWS5cKGNpFeBzsFOC6Wcrflro=;
	h=To:Subject:From:Message-Id:Date; b=tfLpZXQgBGUL4NwZf3aPzEXV0ueVAUtTW1iL5SEvCcQwGcfDeVSaTozYxhFc6QcCQ0YgLWRnI1vl8m6CX0qNDtTw4SoodFmedXtrfrzpaFyEej5jxIfzodRKG4u1rbRtfgDt43N49n/RO4t1Dxbg48MeBoDdQ5fPlm8IW/cPTnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0XDAGrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0XDAGrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A778FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765469573;
	bh=RYPcWuYoGGXtZhHMWGxWS5cKGNpFeBzsFOC6Wcrflro=;
	h=To:Subject:From:Date:From;
	b=n0XDAGrptCraSciYXtwT79f0c+Hce0ZlTWffzD9BuYzByiQMv1h5/lwVNrdVLzT5s
	 cltkK9nelRw8OtAsFrhlp11wslFY8h8Wp9utP74xvNFj1FqkeSMc0F1qNv8jpKwy6j
	 ztxA/CV0IvXpl6jI2GPgWPM2SE1Ycud1te1VbwxTT+9Hi/fsvvgn3H80VW7aZ6IuVL
	 nqWzwSUMYiLrgCqfdbATBZXsbbJTbLfLsD4rxu7bAk+zYA1UEgWvmnk4aaB6vZ8nOh
	 cEVOYE1HjftYw5YleKo1N37M7xGY23CQIwEKGgOUeIvw6lg4GUV70gnBW4yTT8RqXQ
	 Qi5fWIYyTYCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C61D41D64
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546957358.5045.15627454958437700382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d395131b782975e36abef9a097ec227d5e351f33a188e421efde5d2a241ae964
Date: Thu, 11 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765469573
