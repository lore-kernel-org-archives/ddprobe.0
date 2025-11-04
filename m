Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3E01E89C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762288794; cv=none; b=pLZf3eZuoNmZfKIC+KZgzcJa9ifluhJCUxm4ZAokyEj+nByEPIwdysIkFJQ656ANFq8sf5a0nmz+6yvUkPzFN2zGpQFomynj1UJ1JhJAdo2caXoeoloqTMKSdfbp5t4dKYwm1T7crj0+Kwlsznlsfi7n/AA0DNUlAR9Er2P8usE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762288794; c=relaxed/simple;
	bh=g7e7tSvS6tnncq5uQEWaqyKzJLRLaBGF1uFdQvJYpaA=;
	h=To:Subject:From:Message-Id:Date; b=OaHZgs4LA/L/vlUIR3PBdit36DhctQKKIlYlwtc+jZgIsq864IcGdd+fK9LG+Tf2sH4F75DWnm5NQ5oKKzu92u3a0HNNp+pvOsSiiuvsiRf+L/+E/g0mhd4NiY/Ci9heOS/SquavS20G7EbKTDGeU6LhE/uBvNpN2LzS+R4AdBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twyr1eNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twyr1eNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5382C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762288793;
	bh=g7e7tSvS6tnncq5uQEWaqyKzJLRLaBGF1uFdQvJYpaA=;
	h=To:Subject:From:Date:From;
	b=Twyr1eNSoB40eX1uauFtBkXBvHMYKyjwmiQrQfnGIVgTFFcfeaIrePFrWVNaj+2jV
	 53K7AUH4qLnPZCEGF9jgIUO6fFROUiSOsujl7wq0DdmAxg/zATqyZv6zOp74ynKOVp
	 mHabxdtJT1lyBU6Za0Ig4Q6OoCnT3ZWhsX9b038nbrXBfHy+l+MbbZ862wpE1tZOi/
	 Eo2iHilLNrKDLSAbD6YAebtQWa8iLHCkJDkX8bL2LGV4k/NYOS1ZAU4jgX/lbOqbsY
	 A2hICL+fdnLUXuTPN7neyKUtFn9IJhnsOQLcZ5UVCFwO/Vf2ev9cx+I4iQJWW/cb6b
	 goCeHVreY+Ofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97904CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228879358.4430.7137084524094940841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950ea48f4ab1ba86949dd0908a9811f8b7bb666bd980165e0fa4a6d767b76fcb
Date: Tue, 04 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762288793
