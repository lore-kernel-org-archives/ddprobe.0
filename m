Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E817221689
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728995754; cv=none; b=a8i1JSVhKT1JFQy0FmBHCO0wLFGRmarri0fJd0IbdKNSU48968Metmd+lL7lJoK4KBxS88InIZmlHRAQnpx8Q/4TL+yCXnGDx1CIO2NTSYn1juC0Tcjjz1y2cN7bSWW7xL0mNvlgObYDxZco45kbFQ4DKgHhWbSewhoSx+ICLC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728995754; c=relaxed/simple;
	bh=33ot4U/jsOCRAoIxoF8cteFtnVv+aWs8FsiRaIuLAV0=;
	h=To:Subject:From:Message-Id:Date; b=Hgh0dKhgS0ViEh7Fxk9KAO69gSGEjShsyNDp35KybNcQI0eZHyNYpiURywQ2uUM6a1g8Vr81sUrlz4jKtHUtHvt0E7V1JcyIY8hEcQJXb3MENXPiYmB2BaQvMxR3dmAlqtxCso+9ciHALOLiL8+CtQvmIrVlB4Tc7EQzFWXw41E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECaztwuO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECaztwuO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5743C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728995753;
	bh=33ot4U/jsOCRAoIxoF8cteFtnVv+aWs8FsiRaIuLAV0=;
	h=To:Subject:From:Date:From;
	b=ECaztwuOJd/sUA6TwKrYTeRnlC7Dls2F/0z4BE8KWwVf9GO0CEwx3bL/uYbM4dlCI
	 /sE0Quj90SEKaBr272pgk8EHo2VpA2OqBFIRCvwkf9LHIAD8HyjAhBf8ZxRXNKB9fR
	 WUQchXAsxBnW8uelLKK4udiFwTiZJw6dzF7yDSEBd6K7T1K6oTxpJom7PrfuoEclux
	 y3P5JUEhQPbJ2Zmd7NtRc3yRDNDplJCXh/cU/ZGEFihqLjjl9/6OmCXh5RL6l77Pgc
	 MAxGzG5HCnCRI0BFPyNAj2iD0hOkgj0dC5SwmzOdb6q+uGJtPpMaA2/FnssDGb5AiT
	 pAAudRfl2TbeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957FFD21694
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899575360.21423.17611675112781503072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09031f0980204d8eb9104d44044f8027ca729e90884c1c1e65477959f364eb0
Date: Tue, 15 Oct 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728995753
