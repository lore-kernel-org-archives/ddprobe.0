Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E5733689D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772829894; cv=none; b=VQUvnL6IZLl42BTo70IH5f8VEm0mepNJIaYSn/UHSzG9qU2FoeWUdZkI39mlP9RmBHmZT1w7vrXRBM/iVQS0vruD/q+M81Ixc33Sy8nS7Be/HTh2Q5N+taLtSAylTrr/60dBdmjM+gfuL3SdiJLAUt21sbZKylpFo9lts5jr52c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772829894; c=relaxed/simple;
	bh=9aIEE/pLWS6qMgG7gDrxiJV2ISuK8A2j40msOwL22EA=;
	h=To:Subject:From:Message-Id:Date; b=Ey/+Wdx3ED8bgexbyeWkb0Lxsa27NVS4W8ESCMN6IUkzj+SDwn6KBc9KUvOyC5hZ0SnlOMYsUSSkpBqmqHNFMbBxyKwGXmgxk3ZChLHPjRIc6Ehg092T3q4LRDlkpqWZAP1V6XMbA8KQ1OxWzqqzTWJfaIwE/tM25r7xgH0/9yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeKW6kBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeKW6kBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7149C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772829893;
	bh=9aIEE/pLWS6qMgG7gDrxiJV2ISuK8A2j40msOwL22EA=;
	h=To:Subject:From:Date:From;
	b=EeKW6kBLV71icuHExG1sO3PA7fI8MYqi1LsPlCdlz5wuy3g4X6oBFuMCFEojK392C
	 6iUBYhX1CrrdlfniiR48QKbLB8g25s8s0HVcJlAJbJxsNnB/JvR5g1qRLHsaj8Ku3z
	 3DmFya6xFZamb8qw9+d8INbVtKCIRyT2JEV/U/s/rTm0mCZxOqjkJ05vWCYhOjeAg+
	 z9jP1IC9ga4vjbQEumXtJzSiQyGIf8YXH88zz3rC6WTATjULCATys8NG45lSed/uMh
	 U4Dm0As+5QP1Tsh8g7waDU8AIglWWGtHWo0urjJcaiF0dPZDs/6Dll2x8/qsS0G9sF
	 aMT1hnYJvNNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91540FCC073
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282989358.20604.12834825125932174078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5eeb115269913104ff3256da25506371baced2df348c982597c9341127b4a8
Date: Fri, 06 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772829893
