Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CAE371873
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772655894; cv=none; b=u+y1+fXariEFI9uKJktrmPkSdTlQw20Fc8PKYidgRNtym1vrKXbWyGHrA2SvdT976KZmwTD3RWizdiEP2BQ06+wAMPJKbaawDRjQSfBX2rjBHueqAFfhG1DPQ5S1EooKp79KnLFhvCRBwc31F/hT5dKHo8e/dnes/qPpGxAJjHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772655894; c=relaxed/simple;
	bh=uZD7ZK2zazjWHRbSG8soNWcv25zoL5kwX0Cfer3Wx6Q=;
	h=To:Subject:From:Message-Id:Date; b=g3+kxFsh27b/YO9gCA8Nkmq5sUZOcv6/IHzfZzmCLKIxK/LkN/bX49jLl6F1Gfg7Sc7qXs3ozEzGtFO4fC1r6k3XvalGgXsz6vLkY0DvSEss/KrrGPs3yBkvVnWS41qLqQR6FHsZq5+AngeyX8hOIK7NNqokwmFtvVLJwdO0oEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=al83rJLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al83rJLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADCBC19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772655893;
	bh=uZD7ZK2zazjWHRbSG8soNWcv25zoL5kwX0Cfer3Wx6Q=;
	h=To:Subject:From:Date:From;
	b=al83rJLkEq8W4s9sWvlnJrldTzNo/NKAi/K4Uq9Lnna7XAfPc2f30m8sKlTjkucOV
	 gBfr2sGm41+Q4gEsjY2IsFtZVTDilJfBvpL+2CwjmYkw3sKEsjlNd/Y4LOHnHcziu9
	 NtqtYaO2Kin8JXVnZ7PtfLcTHZK8oqT53iRWdpBiqciUE8mzhmqaoHljRezRWQROJA
	 /v+r2zGGOtyn08y/63SgCvHWRk7iwhJEl70VXXHfK9gqV66SZ/DaG+/jYafHPqYpxQ
	 R2YBxNu/wqdsC+AZsGSgRMzjrUOnMlN673TtxLyJHIK774xElBX/yZCv/tqwCOF4Rq
	 UyuKNccuj3GHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93374EFCE46
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265589359.26769.5186749861517118257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8ac9907df7568c0b557351211af351e383899f9ab11d5e2044a633915bef66
Date: Wed, 04 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772655893
