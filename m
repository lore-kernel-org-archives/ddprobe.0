Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE321884A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756387794; cv=none; b=giiMurstEOLZl5Qr9iqqzZTALM+CKKQ5G0pF7uQEjR8K5RwT2fRJaGATtXgqEbyqX9R3aGz+zBW7RQ3oCoxdlsSmDCaFS4F+VmfBM5Deh3g5eaANyvI9+5cAoyLBvRwGxIGkwa2gUBYnEu2b3afhIyI1aRpLCgs7TH51SLhkJWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756387794; c=relaxed/simple;
	bh=AJuBxE17zhcZhoC43sn2HAa9Sf7HZAU1+Pd5OJS//7w=;
	h=To:Subject:From:Message-Id:Date; b=hvO8jkpokHbhlspFJWbTDADF3ut+yC/2OSfUapcjyv3FeTwA/RhMq5y3xt2bZgnTmQJ9yyeHKSSI9u5Z5tdApSKMsuAUOD+NMk0u8LKl1ZEhMaYuhSJK5RAvZAbxtcXT1n8Bs9APoYHzlR1PyUkVDrUd+ziKNmvMS4xcj8S3w3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJTScmCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJTScmCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756387793;
	bh=AJuBxE17zhcZhoC43sn2HAa9Sf7HZAU1+Pd5OJS//7w=;
	h=To:Subject:From:Date:From;
	b=JJTScmCm5dgPfYlkWjJ4DW6dMbrEz8AlSev31/mboPsXFZhG2QdmMtButeyhYjKwG
	 AEc++Niq1jGYoF1cDKzot0dZ9mo/F5tXPJ5fKjarSScusbMdRs/aEzQZ3Vt8KUEEH+
	 JVY6ZR9MkGm8It8knfPSr8w1+zAHvyFXQPUmTQ6rHJgJv7+SVJf8AhMnx84Nv7Lt+R
	 l2o+KrezY5U3isCW9Y7UzBUUFXk5HRT/JEsYVpZvNzXNYrjxCXJJjVaXAAN6YEClrm
	 FAjlOzEViKn8+26VTg7m/KlC9cC8Zsd1ArUMg/i+IJztMwGGMWaSriuTOHF2G+BxAH
	 gmZeh7HmWNlqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CBCA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638779358.5576.6368170001247893557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8f9c66c6a1e7a2224851942304c20ebcc20c4fb97df651fc33b2bcc78404b7
Date: Thu, 28 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756387793
