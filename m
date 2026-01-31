Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2365F76026
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769876634; cv=none; b=n3RY6k9aPsk1TOcl3RBp7Hl/6pSNzl4H6uC/JhNx9Ykmq9m8nNe/ifSxoTKPnm4GkFRWcskhqxMB+1Wg5hKXbo+49EoJs0/hVah3ElJor5SUjoeIKgF7hvdh783Mv+E6rRJ/9E8n4h+ifHivvOIxSk2hmkZ8yvsMAnuIgr2nbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769876634; c=relaxed/simple;
	bh=PAO7QTUjBafv0bJuu2Ue6W7T5R/Pj0ZabxRkLM6fkuc=;
	h=To:Subject:From:Message-Id:Date; b=l2T3hlybhsecEEFJkCDRmjH1kn7/f+H726ulEuuDA5Ef1L6AOtl0ksNw4j4PXK4emzQk+QNyK9TiOb9k5z24UgfBKAa/bbo9ibmXjKsArifFXFTpuMvCyjLMBmJ1c/cEXfgA6Ditsv+XRklTKw0qindejiTB2X+SXT3/ox75IM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Sp8biD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Sp8biD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769876633;
	bh=PAO7QTUjBafv0bJuu2Ue6W7T5R/Pj0ZabxRkLM6fkuc=;
	h=To:Subject:From:Date:From;
	b=L1Sp8biDcWQi4EQbDnSlvyl8eL9zQedxlqMzD5Az0sY8xdKEwV3hQ0dtGNJDJMur0
	 MSJ9kp/SpLHGwKwWZaaxBZWeUphu+bxLI+QsYWCrCV5BoJCVwVLZpZr6o1Y4yeVLQG
	 pDvpYsN9InjgHtDLBTDZkrcICskHoCcyD/m7KehrHhEE4UG/xhE6s0HQeUJaNA9ir0
	 Nmr6oZd0TSoCgTkkNH18fWciiEFNQgLp7PmvEc2qY4UMa48lFje/PtmoILp6HIvCgP
	 5KyG6zQPRTigdi1HNf9AT3qyTqqtSJKNeRPWO7RsJTSKQAQVWXokiKscCemB0AwCnn
	 2/DnaX4uwZfyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFFD7977D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176987663357.2039.10850906357551663177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad20521634e16e04360a3d9033e70aa7de689548cdee173f8343b585ed4b5782
Date: Sat, 31 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769876633
