Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0B213C691
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720892423; cv=none; b=oHJZhL9VrkXrpkUfbTNK8zIMvppr7NV5BfuBAzq0yt164dOqlRawAgHe0FfYkIwXOLsuBOtktczVtJhgZWsTSqsWtmOS85CJauy7un3GJAUw0U4ZP2Smx15i8RMrvSd+8jxNOh85pn4t9axjEve7ZdM2iGjHHmU8oe/MHpOMuno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720892423; c=relaxed/simple;
	bh=CnFib8qiO/fHxxaj2SxvJOSCZDIKZW8/7ARY701s9Ag=;
	h=To:Subject:From:Message-Id:Date; b=bbBZ9CuRz49YkK2zJ9fRn/6/DB5wt19DYsaLWv9tCkRfvSrjP332gHzPE7FlGh2XfKauxHBNDKUpVV3mZN3YtP1j/VI+yaR0UfF5zJ1GQFrLOvT4EBXzBwCMqowuP8mRh6iEI5cKc+uMD9IHmy6wK2namjwg2ZRU2h23QztMpY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db62jLx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db62jLx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3051C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720892422;
	bh=CnFib8qiO/fHxxaj2SxvJOSCZDIKZW8/7ARY701s9Ag=;
	h=To:Subject:From:Date:From;
	b=db62jLx1ubQwbIdT3EcFTB9tAqHbqc2oWeVrJhSf3COgEGjYBxcIHXhE/6yxJ48nd
	 8j9vlChnhmUZsZ40k+QPUXxL+8syAEUNem8Us/A+gLgivu4bQBtFChrPSZRh9kL7de
	 xPSihqEXQkP2SHGL1xTI3m+a+8nSHHtvz4JtEIpGL+dREQlrlQqJ7H3ibYyZBXGa9J
	 n/B4Giy5GYLdkJ+O9jmSmtiEsQiiAGZOjRPSt8KjrXJeJi+rZU+3DhPyvDWv4x3wOz
	 M+HZvPNe8/n5ZXlaSBd9/UzDBoiqJiJdymIVtPqvESoCTdYZufDJOLbBQMGGTmYZAF
	 7rZpFMLGr6CDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDCE6C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089242281.1130.8369243407831388130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4746cdd6ab572901ee59067475739fd7633dc7ae1c950894c5e234d571ffe155
Date: Sat, 13 Jul 2024 17:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720892422
