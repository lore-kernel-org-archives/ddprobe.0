Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1644C218584
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750712394; cv=none; b=i6k3VxLP5bAZMoZ+qo5YM6ZkimmgBoEtd5ht/WX0jz1T3fXNNubI8+VEVCMZFuuH7EBAlNq5SU3Gy1cXc1GSJw1jiirY1oPOwl4NCDVqWDML99ylaQxpsUH899bNt6FTcChHPux0g0zxATT5cXGo6cT9VUpRiFv+/85ThSPCx9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750712394; c=relaxed/simple;
	bh=flJTtARH3f0spU0d+3fmYkLHAgescWM7O5f0SOPVrvI=;
	h=To:Subject:From:Message-Id:Date; b=GJvoNFAXh2ebT4+C86PjsciUTiH6RCZuHGRUFeAFtQ7ISDUEouN53pF+Pog3KCZGqvbMXquSy6ePYDq7NT7sT02AW/GEzi1dJ+iqsLw7dbsAnf99zLUBgCLu+5eUL5K/3Fj8YIrLLxAEASpCPKBLy4tZwmVBncA2jDZnwyftwSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFSWuTpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFSWuTpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC22C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750712393;
	bh=flJTtARH3f0spU0d+3fmYkLHAgescWM7O5f0SOPVrvI=;
	h=To:Subject:From:Date:From;
	b=fFSWuTpwGxo0sC2jNEBEFr6q7nrhaLcAj/y3dIFxkkOxvNjl3CHTUr6CKqY+ly7h2
	 4uF8HujMw1TBMbzy9jpvnzeQhZTAzkSa+I4Sf/gxhdlKRNk16d/If1mkGSCNDmF8w7
	 YAsEO2+hYnT3QkacT9B2r/DV+tqkHa7s0rPfwB3aaCmwIBhKe+bocqriQYmL3ZgrCz
	 WE6+y3QrcmekE8z8cGkagIXdyJHh24ci4c/rjakyYnFZ21BMQM6Umu2Hena3zXT08F
	 gSoKfbfzSi3q8BbOJJtyy5uHnG9G4/DQG2U7voUdG3/Z75CWgA5KGQxsbfkdfTix+n
	 4TMumflg3lW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F616C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071239358.28481.13418048049647391398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6784199417bd3dd8de0022f20e270e4e3c8482eba14a37acfeb9ed78371445dd
Date: Mon, 23 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750712393
