Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B022D9EE4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781804194; cv=none; b=hpzoQryeMt7nE1HtVTS7lDQqjIy8PUDdCqQBrXWVJ2g9sAmIYtHLnBHuAg/0aFi5bitMj6RgFD0pL72il3kG4tLB/yYSPlBQoRXCtPonupD/Jo7F5DqaStmsTXLW58J9LMfUpqZuKi4297RaEoAnkpzJomQWgaRxN0/cMXAEAp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781804194; c=relaxed/simple;
	bh=N4Q3pBNVNgvcwbHwOVn6eI+vfSYm4sA3n6ddxVg8Z0A=;
	h=To:Subject:From:Message-Id:Date; b=T0XbpRnhbuYn3wI3mSj79zaxUiUVz+T7yAoePULbBDDN896Ffh2ipPsUfn2mufeLT1kW4WUFJCOLGVbmQvuvv43xcrvnyaFfQ7nwg9q+zogpruk3pbalM9kcppk4nsQM55cxnyJUzP5pjm8Y/93t7kkXIyVev+nepyOE3Jvh4yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyrEpoDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyrEpoDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D325FC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781804193;
	bh=N4Q3pBNVNgvcwbHwOVn6eI+vfSYm4sA3n6ddxVg8Z0A=;
	h=To:Subject:From:Date:From;
	b=hyrEpoDevOf6ghYaepoD/5O6k46D2EJnZwRnrut8n6FJkudtV3YaIARQO22AzRtn6
	 WPJlvHZHSPbv2qDPfr9oQE2S0Q0/9ZEsEI15vbkUWmq4e6KZ8RD9bkrL5E1b5WqfTD
	 wzgKmylSkoZwazSp3F0opPbs8tETFzSB78SKJ+/LJ6foek2Ax8o+JazlWtfpGqE0sP
	 H6TCPaDtAUR/SFMGDvCmjHwprObQDwXvcaZO5b6FwyuU/wP6N2KGPiVNtqQtxYRU8v
	 Ys/wGZS+R1nXeqHoR3lQeICKGY3LOw91bqg6n7sU/XVEzlj/LXPgIj4Db8NlAJkYj1
	 bpqJ8KXBD21Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AB9CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180419371.7648.10695451395064782959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97deb2e3dbb5aaa81eb273f5d3e8f02b4559386bf741b3c22e810169138bbf9c
Date: Thu, 18 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781804193
