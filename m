Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DDD33F36D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777964854; cv=none; b=m4VMFyBczKWmh2YBd5U+4z+UlVEUPsbK6gNpQTE4CRMuTJY2qr+FxJXlR5Axqn8LnVtmOwAThixWCai+OoVTaG1nKvhAVA1NNnZ5Ur5L/IPtpKsfoA6E5FAWGMIdpJoGjooF/lQIBi5/laxJJRNUVeRMg965rS4+mIUcO/HU0aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777964854; c=relaxed/simple;
	bh=ch4m5fme6d1pMNYIRUf2ZMpZyOSo8AtaWsUZeTz84X4=;
	h=To:Subject:From:Message-Id:Date; b=gNpD0w24N/LAOzfzqPLXlhTXUgp0NTsWCiojgzueSbKCw0zb/tDGJw4gyvWTgfbCQL57C/6WzZUaZlqY1A9LE4iUC4b+E5FcHLYZoh0C46u7n8ukH3BEH+Lr7ZSqSC4e28K8dEl1A/icaogijYegpXuyqZQntbGMLFpdHe9Xj4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPDIY3qV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPDIY3qV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6454C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777964853;
	bh=ch4m5fme6d1pMNYIRUf2ZMpZyOSo8AtaWsUZeTz84X4=;
	h=To:Subject:From:Date:From;
	b=OPDIY3qVdI6w/AOahZJi7EH6Owk0XBWEPeSpI+a1pwKir8cmOJDGSI/xyJ0pf9Aqw
	 pVrMxgaXxp3I8F1FUtfm1KGGTsrpUmGj20kgzZVcEJibVmfwBOUvHM72EjkuTJ8aMu
	 1AQzvMVkq/8GEFEvj0+OEg11qSypvfrzbrsMNUUeEy27ekOBUtuH7+fsVlnPycykLu
	 uXPAg0EFsgh2dfdcbQ72GyUeY33b+aO95qBc5WbI7VxcWOOFlu3aGrIdfdnLYIII9c
	 cgHSpJYD7zbGFe/POFVhbV5MH7zCe5QhS8PHlPDkBeLkNZxoaLfFB8TSl9kB+uH+TF
	 OjbL/VJsWShSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9350FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796485368.2298.7920351673178392144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e540645a682bc562096f061a5829082ef37fe4a422f9cbb94272d63d9b7af09
Date: Tue, 05 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777964853
