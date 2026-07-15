Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BFB3B840E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784101114; cv=none; b=alVggki2NW/P87q+kCTR6YOOZfnaYepxHMzakZ3KSvdJqAI/Wq21/8gWwCKWc1NjjFv1s4UW57g0uOoFKTSzFvAReEzF5JQvmIe0W4gn6UL0s7Lixflspp/RAH56xiKIrxJHcSGuD8NRQ5dyfZDCHODgKzGMZET4u3UHCEXyIPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784101114; c=relaxed/simple;
	bh=OWeA8WMr78NU8mVsQqiBebfwlZeu9D3KkHVFbUunxVc=;
	h=To:Subject:From:Message-Id:Date; b=pVu8h/YtKDPlaNS6x7lXBmAE71uH/1xc/pJWCwornrPSNbXud3/GlVczeJCO8xzNhjUZM4BMhjHlKldQQPpWRLFswy7AxwfXZz3TrkTXVS/xuyubOyE3hCki7Sczn411jEjzsy7MoX1j35/3cDx9ZK7xlH6Oi49OYl0t5kGfVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5AVYALv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5AVYALv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2A4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784101113;
	bh=OWeA8WMr78NU8mVsQqiBebfwlZeu9D3KkHVFbUunxVc=;
	h=To:Subject:From:Date:From;
	b=u5AVYALvgP0EIfILOE/6xzMlzEGOYgG9wJ6+ARgeJaq7oALzvbZHPe4GrRDdpAWMr
	 1dlfmXV5d+rsoZbP6DH2rTpDt7lUxFUmZeXlwOHYLslFUBaRhsIOgdi1UUWumhyNZc
	 5FJagVaJAqKx5vxSbVc04xAoCEHECfHAyAJYK1Wu1UJo74Fod0svYqEQ7XJf5Qich0
	 yY7D7P211EliocVwWKq14P58EGiaTRBmJ840AzCCWdCV1elSoL4Iflb3ivrtCjUfUH
	 rSCaeLxOZ7R8SB8duGHI7RT9yIoYS51isFuqmwVyoWOwbpjtxQjCEpXUTCtdArLIom
	 lR6HkURBp1Dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD720C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410111370.18964.16246681754147723609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a199a521ec160e8fd38414f5527e09e4873bd91d99738831dcee51fe710cbdc
Date: Wed, 15 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784101113
