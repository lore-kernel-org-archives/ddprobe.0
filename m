Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DEE1096C
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A78jVH34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 893D5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703803696;
	bh=DS4CZna0rczV8LabSJLuZ7Zn0UkMGmKW+LeSbxpsoGg=;
	h=To:Subject:From:Date:From;
	b=A78jVH34vgnaUDS3Fwsb8AFWlMLF+efuSiGD02/K3cdkxtyCjBXlq0TNSDXhK3xxN
	 dInEQT6xjuvi4jiRge/m+H3GLKEZr21d7FQHIhlrJsFiSxMkZa1aTGJuVlQEo6+Vr9
	 VL1U4g3QBEy6SFO/2KQeB4Fd1Cq7NMJmUmk+GNC37q2cDUIcutwRpt+R2VzGzRjpFo
	 QkLn9CMA+dc86Ti+2nAj2CqmBkd+mOwOdXQLy/y+opVQM3X4AxYu2171Dx6YBvTjd0
	 dsnh7cWTPFynMI4ECXFunbdZUeBG2pB7EPgGG5S+5B1BaELL4U9IJdqLoz53f6Qe5E
	 TG72RLp1cqnAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E084C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170380369644.18972.7527053810436751551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ed7371287e3e119ea8f096afdb0e2a2eeb5d7c6e91806eb0c882f7d1ce6904
Date: Thu, 28 Dec 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703803696
