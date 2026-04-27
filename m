Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E48F9C0
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777293454; cv=none; b=PePYtr/MeegoMK2U6OxdFU7LPBfxjehcjgyovf+cBHmpXYk796Yu37RDiEeuhWnmhGlrLdvDGe8FbmZTxDvMBJ2Y2+Nkj3Mr+GuAqQTtNcf2Ba9m/TD7Jovq7HymgOlH+9beN4nTr/eGSZmCPrdOjXegCD53AcJyurTDF88Sxt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777293454; c=relaxed/simple;
	bh=PXEo0sADgdWRUdPFKKKm1vDk+V+dKPkUROEbrdns+7Y=;
	h=To:Subject:From:Message-Id:Date; b=ahPneskn56WKZ5WXk36LMHm5i7UaOcrKG2EWCSVM5oGB0KbnLrE/+JdSpUUJQytg/+3kOWDqON9IHywebdRdCWEOreVxaVuksH/SJURL0DaOzXeHkvdWs9a4YOu2fMHjQ4BpOqrNKXANqS6FVMu+EFhIWHEoFwCOOG1rxMx5wEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noXrX4Rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noXrX4Rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA8AC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777293453;
	bh=PXEo0sADgdWRUdPFKKKm1vDk+V+dKPkUROEbrdns+7Y=;
	h=To:Subject:From:Date:From;
	b=noXrX4Rq3jnD2VoO8BKD1qQ8bhBiSkOsM/0QE8M7r8edzv4N7NxnY5Oq1zqFP1XPj
	 eQaW/fSaCVwpHHr1EG9UvqxoGbW22gwyZ33SvtK0ckdt3ppZm45FD9vZuXEDmFSOIs
	 LhxRfvFcaIIeiggV024C0yhZNVf2gToiTB9e2O9P9kg94TOnTzLZSISM2lD1Bk04vo
	 /uesfP2JpZcYYNPiO3BFCa7cqmSs1XZplVKuYnG26KVQtWcJhXD6XZ4/7r0Uj7pgO3
	 ECKBmjE2upupTZKJNjhfCfLmH3magae/fQOdee2YFoQCdvveLanH7RexW2kSk1LLps
	 ZAz1MyiaGouEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE3EFF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729345368.9602.14282571707494010816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3062c60944ddcdd013583745ff343eddcc7b79508f2c8bb04a70d289888ab2e6
Date: Mon, 27 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777293453
