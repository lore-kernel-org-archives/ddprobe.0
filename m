Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF82125771
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782413254; cv=none; b=tIwQo0bG4MLvHMI83jyPOmWPS6dI9WWXr4JDBUMI2PjSgqb574rbrDx0fbSyK+M1Hj8gEtcy4Lhb39j8Gk238xetHcG4+gdoveWpXdTqEPC+U5eJ4C5bbLuxVKjSQp0p7kKEEsU+lg8Xn+8bgo9/6gLO0BB9lq3frM8Pqnohxn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782413254; c=relaxed/simple;
	bh=qfCUEEhqO5qh2NAlBeSELlT+MQwlCP4ekiVUgB05ahE=;
	h=To:Subject:From:Message-Id:Date; b=fhwejxm5sLAiPGaLWpDYxXobkfxxY0rAB5oQppnoNkDk0ji1j2S6K/1KG4s8S8IfHykJQfRHMEHmoFNmFy8I6xHBNwh4ioR8Qj0M6E5XoTW9TCA03cUgD69oqLJuLe/qYO2jHN87vXJaEwshI6n0de86LpVtt7Cfuz0vw4bnmCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy3seXib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy3seXib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EAB9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782413254;
	bh=qfCUEEhqO5qh2NAlBeSELlT+MQwlCP4ekiVUgB05ahE=;
	h=To:Subject:From:Date:From;
	b=Uy3seXibnQ7awbYJwxpDzLfLuAQihHIYI9Dkp1JooHlhOVMnQGOi6kbRC/dcjcNmK
	 Xw9Cc2N0VGFlfb3mXcN670NRfYKjZVrKsJyedD7s8StCY0maKkeDXYVGB6eK4hrdca
	 NtVu/1l0Aex5rkMIL1W9GM1CYscujtUcWu+oer7t3YVz+UTodxYF247iHRC5SOOtJd
	 dH6IPgX296rJfjMbUu56WW/jlOV2TAIONWxhPygw+5710lGtRAnzXitPJHu06FRB8+
	 Idfl4AOpXfDfbcSWIXG84XBA9FzIFRYZo2ivsS7JXkUqy42yF0n7mL/emMG4dI3Z0q
	 /VbxsVERFMnGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2C27CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241325382.1812.185485019521416554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6460952c0995f6d933d024cea83ffd227c431b044563777fa79016b9f48c3a76
Date: Thu, 25 Jun 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782413253
