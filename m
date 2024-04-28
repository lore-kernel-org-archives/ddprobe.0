Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4BD33DF
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714282343; cv=none; b=O4MhyeyQXG7X9pdaWy7SZuh9+Q2sVUBOExpXP9+9LQEoQlNEdKLI6yP64oaKFYBkYc5eqRAGsRuOcKZKwFR38PEMKOc2PGS74BnPCPwIlf0jFyG7k4PbIwupI7V0buKU5cJmXKfK6/DdE0K9gQT5NFkXvU2nj2CcVSf+28o3fAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714282343; c=relaxed/simple;
	bh=DuLJ6Au8bLG5OCdxWzz0Nf2C17de0nbOvUj/Uz7ywo0=;
	h=To:Subject:From:Message-Id:Date; b=Rq4koMp1coSo6+UCFvkU1+i97h0B22vXKKMcUCrlF7SIT0+BWuKNyX2tzDrLqr7/J3NM8yvaHBlLt9uuM6JIVrNqWvd/gKEcVyiiy1ql9m8n93IDDqACPOqHjXNdMRpuWvY9OgjGF0srTf2Vdjtl/QTWrB+NcZp7HaVSb+zKK58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy7VhLNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy7VhLNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7962C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714282342;
	bh=DuLJ6Au8bLG5OCdxWzz0Nf2C17de0nbOvUj/Uz7ywo0=;
	h=To:Subject:From:Date:From;
	b=Gy7VhLNWdG+nwWSQWPxju7gQBXpljySO90NrFLhw00OqDYGFPy5w8eyoq3MD67k7y
	 XMDA5XGSleEwh4HKLmhFmAwF5ZEJHcQE8biq/em+th/r8H3Jfc5yr6E3VXSlucdJc7
	 yj54tOMcnCEEChspoQBrfh5SWoDP0e+DVzLDW3ScM3G9bjbnYXqePKXd52/BhxWsvh
	 FDMF0bN3LtkfAgI7r30PEL6UG7xlm4xrpxUUrvBrB6NLAyFXm+IX5Of+QPHcsqbPga
	 JAQpjemUAaQBGjgq4mjwbtdDpb7Nr7I2eU7U5Vq3kOJWClcm4n7Iw77bV66ApvP5ax
	 A5DAYLsqXZRQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF8BC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428234276.18379.6774646162692136235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfe35342ce113df5e1c9ae61ef50d46af7d35262e092147efe9bd8d3c2ffb74
Date: Sun, 28 Apr 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714282342
