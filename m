Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362A91A275
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748326795; cv=none; b=ERKdn30oge9nit9Yahzui1SHNf9M9iVvayzqHhI5+Lf80yKKTySMVoemqXzEkPMhm8H1YQlxtL7XQ4hn43TvQ8aqHDYXGPIweycsjfbb5vnedwgk9rX1Nzz+cHVNa8iMPEp6wVUe49RUo2lnH2xSGfPM/etFs5VDVCaQGEEHxkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748326795; c=relaxed/simple;
	bh=jhmreKBRekwBY3fgpUkRLK/lYRh1P8y5HXUx0B1Cg3k=;
	h=To:Subject:From:Message-Id:Date; b=bIHSFB94ipBwRfyaRcPyCJ0NsISBozE6M/z1NW7i5oNf0q0Q3d1uXfBByCJ3jw9tWS9Mw3urbtMlHNiG9CC9o6Qb+7TroE4MCuouER9ljS09dlqlw3+Bx4eI4UTpSJB9QnrB0oMux5uZRdOAak/Idg5dAsq9aJj4nUSo0GUuSuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlZlGZNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlZlGZNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5AEC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748326793;
	bh=jhmreKBRekwBY3fgpUkRLK/lYRh1P8y5HXUx0B1Cg3k=;
	h=To:Subject:From:Date:From;
	b=ZlZlGZNB8bV2rZe2edk21f2ZjbpixHiMAAV0QA4kscDt0NX7CUT/kLPH1U7hyz7+9
	 h+7MKUgC+6VnvQ5/JTia6q95tlrgROrMk3ztkZA2YiNKRvsHBJ+kKnldWz3OAfwGwj
	 KRr3l+4HqlvJusiwYjW3P7gYqvrsoxbTAnv1rTInITpjWWEDyaMYrJ6JklwU7CkDRK
	 682kZ29/MixgNee187HwK6tyS+d63cn0H7dpdDDPYv9TxFxEH8WTjuAVzNyUfeGgZD
	 NoBkgSxVWqRumTe9KBtqfQESn0axiJTLNh1M74VekBHDqAGhHgjAPbo0d/pfiuBZvh
	 +y9aeHd6htnYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA8C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832679358.6768.9921953851213612796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd00188bcd65850e359b9adbe7043684fb28efec81512977edd0398e931aade2
Date: Tue, 27 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748326793
