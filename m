Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3952550D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767823434; cv=none; b=HxTNHIn44T+SIoc/9pnyPM1o1TEf2uiN/wxJxTtpA9vW7k02I84F9ORqTq23FVRGLhf/2PS/J/HXzi2WQn6IIR/RyssfBw3CcSnNnNNfua7lxdj+HBOD2C18IgOgSWkiDPP++MsJ4k6cV7rE0HNpWSWS78XglSz8GeU+Igj6Q+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767823434; c=relaxed/simple;
	bh=UpG+lOgMQDIJAU51z7G4GasqlXRs5X3nyMtrZfIVJWw=;
	h=To:Subject:From:Message-Id:Date; b=Hzwpa+9/cAM4nFNt1RjcQqhdFci43wUZzAAMEZba47e4m6w5eFQgD40XVUVuR8gIF/9eRXZmETgZiZED7D6cvDJ14fa8HHVhvJROTtfVxqFTcNaiCAOYPmzcA6O6FS8wrF8FP6EWay5Ws3ymkbiyeR6vPIEw1mVImFZeOH2GVhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgGPXXzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgGPXXzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0504C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767823433;
	bh=UpG+lOgMQDIJAU51z7G4GasqlXRs5X3nyMtrZfIVJWw=;
	h=To:Subject:From:Date:From;
	b=EgGPXXzMuaHpAoNDBlY1qLS/XaGRFYQWlKC9r7DKKX4YIgsvNuLkKEp+zcifSYN3P
	 hnf4yYYabA7psu1nsmXtt74hjnjezoENgiNKmA6OrtBmtnhNNrOR7byQ+vaW20/DSe
	 wWcwx875n+Gwj3QTGuJeEKtkutYDO8XGQ7gxo4cDZhxH+JtIjyqA1eD5lZ7WhwDRGQ
	 jDG7MWrRm6G9B3Vrx4i+SEzlKlRyzDDCiiTBedOZxt2tJoKd5WlftgfZFDMAmCTOxI
	 UDYIGUI/la0/JTlDwa4gDBh+GpO1O+3aSPYo6Fk1Tx4rRQvt2K86F6rGEbQTjHkWFL
	 ABEuh2bMNBoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70ED0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782343357.25665.12950841193688611978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e833ecc82344b14758d43207c00ddd16c31653aea1561bf06cf7e451b27a1be3
Date: Wed, 07 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767823433
