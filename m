Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7141548C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755292194; cv=none; b=K2fnOW8Eb+7LHOMhKFjibm8NhWIhzgfTJi6+oFThriitr6AfUQW5EMufwgvsv79d+64yoHh9UC38j1kJ15nYxji5WUMS/mFVih25gjnkZcoGaI7kPfyPtomgcWwQ/PZpcxpOIB1eh+not5UNQ/Z+rdWW+Xn9oZdezrmyJMX5Mh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755292194; c=relaxed/simple;
	bh=YPJjq9lJYY1amyWkmxEpiafKFFFOXuJ+3uvv8iah7Ck=;
	h=To:Subject:From:Message-Id:Date; b=R5U447eTuEhV1a/YVg24O4sFFwRz/ZT+DIOAZFFnaBxwiK4Ls/hinuPfB8XNP+fR57XoJm+PdDI457pAjMGUyjWfOmFvjbH4zUfkS9d8+xq8pqkcMxoXa4FSS7dph64LWT/PqHzmE3Gs6QH08wC527b85gfCqzGQfpu8nmG5i88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxv9b7Vp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxv9b7Vp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755292193;
	bh=YPJjq9lJYY1amyWkmxEpiafKFFFOXuJ+3uvv8iah7Ck=;
	h=To:Subject:From:Date:From;
	b=nxv9b7Vp+nlLTArB2tDa7uyDXkeety5VCaOvzq4Lkl6YjjLWBsPRZqobw/C+DAMxA
	 U/Ml8C4FkzBr6G1O5rwN0WGGNYX6cvXipbFHW8vtYZEBnPbPJ1SHmXOdT110MIjLuR
	 tRzhVDxjUXFN8UtpOhWG75UmXy9gNqPKRqbVI7g3MpL7dnycu3oG+w5OLjw4sJfsp2
	 nFJJl+nPWD19CfT+9/SChCwiYf/vXKgbC5H05QW+u0JvFXuw8txsrJ2LwkcBalGhnY
	 owRiynknz1HlkhuK7Yiv6Mqbk2Jts/Ii20JwxzUjSgEzPkmVN4uS9D+VkCB3HY6KrM
	 e0FLVej/tTgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F049CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529219357.11603.8001873557321033001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094407c3cb36d73b25426f917a18ea93405c157caad9dba79e89416503489d88
Date: Fri, 15 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755292193
