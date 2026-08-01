Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF8B3C140F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785609634; cv=none; b=QBvfFxzwHNGvTfxf1+EX0A9tQbfXY71UpJGN0cnSNPnuqGhaNzcs+6xzG019ZcUfBcmJddgt5gw+D4cb3AdzRehWm/Qd34hre5wXG4nzNFQUl9kVCgNQcE65/fm37pJiZOVgp2F28hf1oec4b2VSX9NuHViPu3T1w9ov9vxTls0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785609634; c=relaxed/simple;
	bh=OJBk59iQ9Neywh1ahG6yIny2tJPXuIui/Agfn8E/rdY=;
	h=To:Subject:From:Message-Id:Date; b=Lj5uh/resUgWsXjfPHv6xfb0z9uELs2VknALa7xQFfiEKO/DXSs/F21yET2EcLOQM22dgsH9tOWS5rNLb9LvW8faEfdl9ZFhPxOm4aNtmV99Zini4eW8KkgqyfJuEva8SjqsphnAL1jcRXhZIO3R4+2jk5GxCFv9DbgwJPgwGm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dw8NF72Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dw8NF72Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE35CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785609633;
	bh=OJBk59iQ9Neywh1ahG6yIny2tJPXuIui/Agfn8E/rdY=;
	h=To:Subject:From:Date:From;
	b=Dw8NF72QoEp0/yaVBmn2NESqN6LHHu9Ew9Xa9nZjiX39Qw/Vuua3N1dJvOl3CS3fu
	 mGD+Udqn40jtt3AkHOR1g33nIM3g1V8Ciia87d9kdYtn8eoIt7OQNQ2jazZbWLwV82
	 tNHq66PAqIiON2wZYUsX0Tvb+wewYnh8ZNGKegG4EP8evZJR2jtUBo7W87ZRpCShsQ
	 iqiTvOlCb3vuEOgBC3tWD0Re0glR64LzzGc1f01KxMSvGHcXQfyHl/HH3YfSBTpYH8
	 zCiJqJ9uGzhSpYwSubim40LUVe5c6D1gMcXONOfDQQ+tyIsoaXrKFxmW0Q/t1vW0za
	 smSVk+HZs2O4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F07C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560963370.17233.267611740845834263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf9bf5e458172546cc6d8ec3cb2f2bb5b3cca1f919a0bf82ba6631c36b65edc
Date: Sat, 01 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785609633
