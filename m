Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3261C2F99B8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783751314; cv=none; b=uM5pCwW+KCAaRqZs/zaPOylpyHQGHSP1KoWsQjN1ppYVxfdD4I0rIN61GBG0ZXFn30U4UTlkEcpisZdU2L6moRhDopI8q8VQ4O2bD8OVK/dnKlMASlohcU0OuHqJJoE3Eq3oLx5zYHOdP+OPO/moDBGj19VIU/zgZan++QyH1ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783751314; c=relaxed/simple;
	bh=27PReRvHPDl/fFkHRjrhgycBAu5OMdy0cWE20bErPis=;
	h=To:Subject:From:Message-Id:Date; b=myE3m13WL2zkPnH7MBPg1Xw0EFpST/ROxhrk/bnaySXDeV8H+55e4H9T8f06KSlwqjDD5Y6F8wpuqTtWge+EHqdcG/9XOmGuZJ/Uk+O+zOrTPizEpHt0Q2mpmI1B61ZwZSJSlZu+RJGEz5xlQfxMXB5U3aKG3NkQiJqLWgllpxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSMHDZdI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSMHDZdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA0CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783751313;
	bh=27PReRvHPDl/fFkHRjrhgycBAu5OMdy0cWE20bErPis=;
	h=To:Subject:From:Date:From;
	b=sSMHDZdIw2heLv77HJeeWALRbeHbcrKfl+7KEj1YLGWuuNdtQCmhiWHRrbtWFGPFa
	 IhJSZNHfkTkvdNj91Pj4DZjaR/1ETL8BahyY4tBxmPPSJ0ck+QiZ490wHBS/5Jc5Wf
	 XdlipySAcQKq0LiPAzimDgNRyXTaDgabPZV6BIXPpbZRhpGcLeq5G8zOlO6j5jYTTj
	 KzoKhxqI7bGPi6g2/2FSZo3qGb2Ej3aoH5yfPBSpSdn7kjPt2LU3uxJsHSlJ8EDEH5
	 8MHqGZy9sIVCsa2CZGbfzFD8emf0SDfgZWU/P4eQIca/xTBj/PajBO8LFDQT6AcEs5
	 hpplqo0HnkESg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DF8C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375131368.31728.5513269013494655606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf2574d1bf26dd589ad082fb9fad747505e3d805a23982cd87b8f64252aca21
Date: Sat, 11 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783751313
