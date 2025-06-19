Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3521A4D8D1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750295394; cv=none; b=ejvitIIcMDqFWCElpRNZD9jluh5ujLokRYi/nUro4lfY1A93icjZyRdZgUwjZ85+3yqDFFVLDqo2/x2LILBalb526rgO4xfiGOi2wfPUMozrNywkKT9aw3uY+llpBIOEysaaaSkxnKx+v4qLyT2It/alPd1cvj4HrW9W8L4mhO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750295394; c=relaxed/simple;
	bh=RyRpdYMBsX5Iwh6I7miJT8+PUd4nqVhgwOwnkMid0Gc=;
	h=To:Subject:From:Message-Id:Date; b=PgAa2bclN/Lf3VWhBfeHpDWFYAKtLAlolm7uzzKg78ZwAJQ5mP3fQzr5LjDeGlhxWEsqEJ/wMpJ3h7/epW32yV8PQcIGZQj8cNiYAh3jnBb9kh2cfkyCvm5OwFymuI8F+PebSWSfvK63H/qhY1+1dRQ45bsIzlAO1P+gF6lD2FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XagYvHtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XagYvHtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3D6C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750295393;
	bh=RyRpdYMBsX5Iwh6I7miJT8+PUd4nqVhgwOwnkMid0Gc=;
	h=To:Subject:From:Date:From;
	b=XagYvHtGZk3ikVcrkePdNtd5CQ+ZR/eOFzaKEriuOp9OxKze1EI61nD0jcA7TM2VA
	 5Az5nldWKDaDTGNzLmJfvXusp8jyh1IzmyLb/wqq5eQta4S5yaZc0USs3EJxMzSoRL
	 nyDMW6XN3DpEJeHCcRPWswsTcl298YU/fAXG/Fr2HkNxm9iFcNjGqam14LRpydg1+h
	 65vmB5RqSN4dR7zsCqnXe506ll3HW8pzDp/1wg55NKKUgxMyAC2WdM8d3Zzp/dPP29
	 E0evVH2pMrqyKfosfqOmCE+Z17jZa10X9LPfj5frosnCpm3DdZV2H4h+6O1y4ZoynU
	 3BVDSM2NQnCXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95380C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029539360.31256.6544999681210202162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d326b2b960569d147681273379ec6b6e61a204d80683ad551e7863f3bb584a47
Date: Thu, 19 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750295393
