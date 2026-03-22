Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EBD2DF3FD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774190694; cv=none; b=iK61i/xkxgNJ/eKphsvpqK2AUukbDyn/vj8JGeoUVUrjgHrm1BtosQWhW5GN3f5fXmbThegY5b609LrMGhc8uxfUYWO+tY+0+5aMejFvtk36W5cSSDVkYFwMUYrcJTd4WFPHlEcGL8t2Ll/41Ltkmn6K7c0S1UOvrYLxnBlviHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774190694; c=relaxed/simple;
	bh=XX8ZSpRHPjUCmJSKmDd8H+CBafuaojn2GBZxxDJjzPk=;
	h=To:Subject:From:Message-Id:Date; b=pbW2hLL+oV2/5zjLPstdzdbpfFlOiWChMe27OTYw8GEBZkuUz+pVDwJgw+sEFuMa79rcnQEnFh78HxnkMdxya+mopDzODI4ZO7DJCBsar2sjvXmoD0aMBl8WaZs7TEVEP5tdCyQz6EAh5e1LSQVxJP6+7l80q6W5Qnz6ptcJoWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX2I9+l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX2I9+l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9BBC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774190693;
	bh=XX8ZSpRHPjUCmJSKmDd8H+CBafuaojn2GBZxxDJjzPk=;
	h=To:Subject:From:Date:From;
	b=GX2I9+l6qyR5Y40MThkJj8StV2PKtrM1HJmQCWWALp5gXUMJEYE4PnFuFqpzYNQj7
	 AUp+6f6iaEP4y5XwVa/PxJWRPHBWxPbQLDDhwAr5DXozVri5BIwi8b5vZ4g8LuCU0i
	 RN5q0lwWYf8hG/OH8q8sYYjvbQ0M+yBJ2erGKmTZeAP5zDC8e7zc1XmPjY02z+ru34
	 EEhElY3k9MnyW5rUcAiB5LWc3NlxBoXMZpn4fSfc0q9Ahkp+zAC8gRNN6JAwAEyZr5
	 im8P7u63eyw0ECNkqpYVPIk2JfIA7UiXrgxJBtmg4JDcJxvLjuC07GelfrVA/xB/zq
	 Gt2MpO6esGyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EC1FC72AD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419069359.19947.13466708138189054477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0028b7ecce89f54ad55ac029b945fe977d674f119c12e7175e1f01e01f1005
Date: Sun, 22 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774190693
