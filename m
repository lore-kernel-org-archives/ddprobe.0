Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220A61078F
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729412154; cv=none; b=Oh3c/uwHHJJfzGIwioE/CtwE8w/8MRnbEXqPDU0AsXBB4+y8a7UR7Tnn8vtQcS96gR3/hsrgusgwF48vofkHUF5MavtKm5W1s084jfZqshEpPfXmRZFDTAzWIznyrbFNH4KfBwBjR+b2TnGecQADYmwPGNvtHalGmAslkVBCZ+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729412154; c=relaxed/simple;
	bh=lPgpVe1H3o6GhpGGYhppmLAj2Q+Zwtwfxhu5Nv2iJtw=;
	h=To:Subject:From:Message-Id:Date; b=DK+0XrsysER8dHUk5xWTC0pK9pTIyJSXU+lVpwdzlArnDGUZ6kyDI6JZ7W7fi13D7ID92gkVcKMFGBDNydlobOF22j2BH6dnmVOCBYc3JRhZLumaGSyr6tn9/lr8vDxNPr3lLsHPVrpsRiOXiu/NAXBpwJAiGNOhN5yui7pl6co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIbiuwUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIbiuwUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC71C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729412153;
	bh=lPgpVe1H3o6GhpGGYhppmLAj2Q+Zwtwfxhu5Nv2iJtw=;
	h=To:Subject:From:Date:From;
	b=hIbiuwUWMYp0M0LNRzu5/jhwTxFQfIjUYlexOSfSqNU4p/tvbbCdW7jNL9b0FhZdp
	 igD5ywVF49Iz1V+jsK5L2bh4NtjTxgH1+EEr/pEIN254Av1pCUXSwR+S8vO+y7A4c8
	 RrjjdyVb3NEnMz9jWdy8SFChNkA6aUQVe5S83Pmv8h18HfNwxC6FpJeeoyztUDoE/0
	 FWZycUe8VW+21uGL0jKbK/d+2HccqKdZ2n+UbIR2BiHQz8Pp+WFnI1iGIrpIh8pHUp
	 IBrvIKTSOJCNmtZYzjKBbnjLgtvA9jVtoOsV0aXHhOMx4eCOmF2YGNhUCx3L0ExNCK
	 1KoggH6bzM/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C517D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941215358.5546.8658492974344673683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1feec62e3ec392261175ea0533fd8bed65776a8bf4d37224eca926171b6c0d07
Date: Sun, 20 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729412153
