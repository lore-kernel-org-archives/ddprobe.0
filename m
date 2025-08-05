Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3022F3597A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754368194; cv=none; b=fUgFBF/Cl4Ssw/VDa+r9jakjfD6niUamjUPF6F7VyBhpQOyAA8zNJHXyiKCrMJR9Pp4l163I07A+wLmd/gtjOVn//UrRtikWVFTujrtXI5QbILqs0Ut6mpqh37ZkDF0ys3lF/Mn0Fkjm4+Hzc+eujlMosV/WVeFsiizT9J4E2aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754368194; c=relaxed/simple;
	bh=QRf9BNl8xXoRqBRhQ19weltHLl+GzR42Y/3SMwaPaQs=;
	h=To:Subject:From:Message-Id:Date; b=J22sdfBTPYgS8eMD2UGNuI42XjjjLDtdD1o1sItkVdKh0W+PVD0EvWToaBxehURmxcOpsjUEe6Vb8f5USomiMjYUN0GmgabkR7/rL9HPI3DBpn17M2bH3mWHJd7LRullzsDtaJvG4WykEqUJzKBAoSu0bZHdAZnSTVMULLRJ6vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOXsasN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOXsasN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4206C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754368193;
	bh=QRf9BNl8xXoRqBRhQ19weltHLl+GzR42Y/3SMwaPaQs=;
	h=To:Subject:From:Date:From;
	b=bOXsasN76SsjabYknNqANPQILqsgpTeecMlBR6hoHl+cZXiaKhOSndSVYU/m6chER
	 HwvQo/b50OVGPLTWajQ6xpJC1lSI17DJwLSgjagxbUK+Jqb+PxJlEhK/MaVTo+j4kP
	 2AJqEFx8r37eDc1CPwJIhsZmBsI/3oJmXwF3FPrlWoWSztCf3tT9f1sFrpYC22sqrH
	 Kq/nLKv9DqVYoUYDJ6amzGpCwiq9WkIZxbc6I0i1KBgn3+7/v6YmdaSh+v5bnQ/1We
	 BRFyh/+VgP2tL5wF+F1GZoou0kEhXFYtkOwIueGUdmlUWqYphn6URJnyQnPemjOLBr
	 jIztHwJZ0AitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D63C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436819358.22263.12267514829604038360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44b8503980f314e7ec92c89aeb1f899191d088a42ace1480ad4da95e06da9ea
Date: Tue, 05 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754368193
