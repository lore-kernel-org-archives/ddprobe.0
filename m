Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28177205E26
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771371294; cv=none; b=SpvTUifafelF1VMLbHmwLGkI0TZf0rYdDoUfeT8UP72PgwIuOyeKVinzbZ3IxUnFw8E70oiiNeImbKdYdcB+OWcWLLVKYwtPMCaiqFWDB9+yAnPNbtDuEB3XsG5Y8rHExzKOJVVUUhIHDSyL6YQhcGrbX2L0YCNCr9oD+m2g8Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771371294; c=relaxed/simple;
	bh=Ds8dGS6F+c9GNUbU7sfj1/RHpX2Zqjyt5v2qDe1uNMk=;
	h=To:Subject:From:Message-Id:Date; b=tAm4zGK16sYdde2tVdcp/1TYVAc6jkZcXFrtwkJMpmE4GTjW6VGODeGG79LT7AzhHaqxe3bmmFMphjfm3Ue1P5uHLHI+EKz86bWhvXsat4mhpzGlq8h1J1h95DqmED1c9OTVOw/ddhg7yTMmakIu0bJ1T1+3r2fktTBfaZEmiUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaTckf2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaTckf2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1608C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771371293;
	bh=Ds8dGS6F+c9GNUbU7sfj1/RHpX2Zqjyt5v2qDe1uNMk=;
	h=To:Subject:From:Date:From;
	b=IaTckf2zus8NE5/3awF/DkE5DZ9LTsuwSpDpdZziiz+kKzOuS4qLTbkHofpzDFxkf
	 YWawielJA9OhlmI/L+p79sLrE2an5vWF/+mzgI/+0hYSQvuYgDTAr3PqWqyvXD/F5s
	 3k33+r6jHKMbNduJnO2a/LzJ8/dgpwy7v1Ak7jkuVFaTNnGOK/lUv2HBQZlWhR8sPv
	 Z+xEoncjzwcOdLqigh1uv8AJrVBZDcVRD4qR0rGhZWS6ZcXuAp3LIRzG7MNVgaTlF2
	 UObWlIOxxx5N/HLeFg7V4hZUV4dRcq1q49acV95endOGmxEvJBy5nDElkrv1+ff1KK
	 ePmdUmXK/kVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D3E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137129361.14153.6015066614677484308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58a80a946dbd7462de223442a527d1eb6a6b76d60436483b18ae688f1774b06
Date: Tue, 17 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771371293
