Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72411386
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D06DC433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670740887;
	bh=Rnkc8yrtNULqSyzyJKNVMzAQw8VvOEfEkYDZ+L5j10A=;
	h=To:Subject:From:Date:From;
	b=q5uZhHJ9PLLPzRkfHCUMODp3nsdMuaG2OHe4yXc4XoZEJVKpkZWTpp8mI6QQmyJ9u
	 gaTtx0BwcHgGEvh/JWN2IH1LIpe1+L+IWL/S6C4iLdOwJ1lYStG5fKlxKuFoEWb2aa
	 2IgZFYxNj71wRPl+pLlePaHsTm2dzlawhxnt01sEl1WlzlC8Dwj42TJ+wMvG0YBMBE
	 FaheJM4zWB+yNVBsDtAzCPQAuL7H9LU0an7YeDVoTWhikoDz28S4q0I/W8dwkx8eSg
	 8vweCxZBrqjcled4wPSrzr9FX4IsuPXBhwSsnBcTz1iDSAowgpJCrn7MnBSailpPtb
	 C+MiL41nSIR9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E375C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074088737.4055.2726269906826965523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f01c44a25f6723c8057743a3be656a4b18e6f51db474be44808e38f97e2d74
Date: Sun, 11 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670740887
