Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335E8403B1E
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784665714; cv=none; b=ndDO1z3w6e2kGpKVEI/Exl8ZeUdXGAQoAtuLdeCMohh2KD/U1miciinXqmdVDNdsJlEwIGf8rEhnroV24s/ff5ZS2z3pAfdFAZoNjlpZEk3bEYXfqTRyJnMFlmBJKj7dHYn4VQK5oYQ7tsXn2869SRBDIV5LlByjCZryL8rgQjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784665714; c=relaxed/simple;
	bh=cnfKtk5KljtmxHDez8UkZg8n7wE54XmjrJYnnNwhOV8=;
	h=To:Subject:From:Message-Id:Date; b=pDijjQ+y5TP7HUnKUHh6qbvjqZUosA4bofJO8B8pz3X7i0UVOlKc9Tf6TIPIg/ARUIwRQhQyQu1QeNmofNUD6Gs4xQbXeeVXN3BWiFds5f7GiZGMTXykRr2eTrw2zUMvgKcwKqbiN7cru+GjHtLU0Nv3HN/31J+eBcufPGCJx44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmE80dWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmE80dWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC53C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784665713;
	bh=cnfKtk5KljtmxHDez8UkZg8n7wE54XmjrJYnnNwhOV8=;
	h=To:Subject:From:Date:From;
	b=BmE80dWQKxj7et2CrpQl4jNo4zXJTbSj+gBwxj+5XyjV9iSsRBGnddT5AC7l8stzj
	 AgC8N3oHbd/++MuLVVXHrzEkgovks0xnS9BE5Wef30t5cw/M6+HVMGbB/Jkgbkne1H
	 pm68duFQd/kbXePYz5JDVoshDteKrAMCjoDCTXUkwfOHyloHbRKt9/adr3Iljz9pc1
	 lcNYziexZdWkPHF3ffTLL4nrgytGmkw2WhmauGoIML0YpFOx7tC9BthRbfYScx8TyE
	 pJzvfXrjukJa1LVGr8RM/vf1my+gMx/KOqgFko1ujXL959lZ27M3wPv0OE0fsvHgYy
	 1dYhbNh6ZJ/mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC81C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466571369.7694.15631033436099268539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87e15bbd0fcc47e812bc68a170bc2802ad547ae2f6c032608b1bb236150f9b4
Date: Tue, 21 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784665713
