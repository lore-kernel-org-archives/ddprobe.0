Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2FE32C941
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761653994; cv=none; b=h5y4Pazve8YqXdvdpRMUZJeNF9hyiKJAljJV8gXASlFRFkbqH5hfttWoEU/+7h32JSK7+HxeFOM/4DKDUf8h4eykeOEgTGVBfIOI8RUEOeAD1fULkCh9Y25NGmlifHuo4hdFow8rQILnGeXbpfKnECN/K0LorSFbg4NYDtinWZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761653994; c=relaxed/simple;
	bh=cUezuLrWDHg98tPA0JocGtUcBc06uoTxjVUL0cIk174=;
	h=To:Subject:From:Message-Id:Date; b=BboMdBYwkivoHihhgVAGxsUA27rhuebNBOn3vjeC3Vk0BB9CXNMq9oRsYwL5cpDeHlwbYb781N7pucKZmg+zWlx2G7b41e0nMmzG4pXj7VQRhRrFB6EQOeUBxI5UCieT7cePpjudH+f6U9MZoLjEbbAD+hZNtLsZh0qUliQ4rBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRIlIFoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRIlIFoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3868C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761653993;
	bh=cUezuLrWDHg98tPA0JocGtUcBc06uoTxjVUL0cIk174=;
	h=To:Subject:From:Date:From;
	b=WRIlIFoK7fi3cXNYti2DS+Es4EP8BTRlVesaYOiMX9n2Jg6eY09fMcD94y0pNKN4C
	 a920sFdyEEc86pk+G9896Rwn2vq1+43J9wpcKsNPRNTZR+MThNiwAby7Rxav3EUsJB
	 eLCdh5nZcMBgHAiLUk/Q7UONk3p/gfoDqt6bT3ItdL9CZa9xjJ6h+Ceu1hnP2pXJ3D
	 FfeyOrZam42qacb2K6t8VCFBmmHpwQlXWTe5ROK3aifsxAx251pjrFVOX5XNxeHCVm
	 qI33aQqqn1tLCNuiY4LEKMVdcGzH9ntSz/4yH/bKw4/mbLTJDwBc7C7ht4v4ox3+L3
	 M/1c0XoM8L7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240CCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165399357.4030.15146471937018481332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1955c71c103ac51b5d62334e82d919e7278a851133ec978bc19c73aa8317e1d
Date: Tue, 28 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761653993
