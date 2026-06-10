Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5A726D4DD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781106994; cv=none; b=TD+4YN5M6wCxyMZLztX5mo1vqGCMYTSOEXBL7T7XcshOYIZeewffTqupLKjpRIUOYCO2ys0zZqp9ry47Wb1vfjkRIQYhOXJECzew2jiVxzDTRXNWG2ABuBgbOgzi+GERCmnLfw7JJWaGBxFdQhuSQn5WvcrTuT/EsNgZFDw5Vxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781106994; c=relaxed/simple;
	bh=V6IHogcPtQhNO6hdpv26ajXnTQEoxC+t5U8D7CzOkK4=;
	h=To:Subject:From:Message-Id:Date; b=F/rxLAwa8ljj7jbL2IUIafOvtOAEZwB7WUrcHyCqwVoOB6Xhj19NTYcrmxf8y9JV5sEZjl8JQqbBbOO1vJ3194nd7K1tY9zwcDy3R8Ty/fgZQQ2mUG0XAeB5Fl5Zt085ED9hcfiEh1QUkfraaVyET38UMeSy2P3kZyTuSSoPhQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc0RiMYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc0RiMYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5C8C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781106993;
	bh=V6IHogcPtQhNO6hdpv26ajXnTQEoxC+t5U8D7CzOkK4=;
	h=To:Subject:From:Date:From;
	b=Oc0RiMYoG8VZ2Kfxc43X2Rhz09tf+k6siV4VLhi/fVQrFnhj1Eaukn49KD0bZjdx/
	 i9QqBx1XaquNaTeVX6I1yCYiStXk/EpTufYBqJyEVXRGl8LRFI8rc5+PWDYoWHj/qT
	 9Ewjzg69RQkrp+LlOKAU1kwOXve2fab6taGR0pO6oh0loAC+KE3UOYKFN/ANgKCbvB
	 asD/3PL8Qmm/k4L+qJVOFxqBGFFuyskUNEfMIz2dPq/A3B/Ciy3dAWA8gqS65BRubQ
	 Q/BybdYW3K8JOi3W8FAujlCylbUgZ7UoV4DZ2IEi/coYjBNFHviY7+fG4tJL8RErU1
	 btHieWc6ECdqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06A3CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110699371.18296.13833665267262217369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc850ccef4e88535731bad33a0ede018d76023475998e5ef6363dbabbe15a90
Date: Wed, 10 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781106993
