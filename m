Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3353E17555
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726807554; cv=none; b=Qj2brX/qPP4OEMOhlZ3Rnbf6jw2RPcGMfHL40gyk6Yz0/ibyvYzlR4akJDi+4eS/12IJnbowxrkYepVAW0RJDMxHqem5PqJCXFXgSAyobU1VxkJ239lNEwPb2WHQ8STXJjnGzcQ6eGoWwuU+KNU0tHf7CjQCq3v6ywbgKQvArPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726807554; c=relaxed/simple;
	bh=5l/KINqZmPxUiIJv3X7i6XHXxxKVaMs3xFDQ8EHaWtg=;
	h=To:Subject:From:Message-Id:Date; b=D/D8gGZAKAkeIt3KasI9THAYxGzasPFKkzZL8MQIzyUShsGxrQg3sLPoBzmKK7ReOAjsisEroeQ9qjofMtHIKm8wc3bmOuKHxEnZBPhNGWGiWeL9fZb4AQdvWMXfDPYBlh0hTvpVj3hRcmGInsC54s3mL3ci1W+mg+q+tbx8v/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1t5YpY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1t5YpY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD3C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726807553;
	bh=5l/KINqZmPxUiIJv3X7i6XHXxxKVaMs3xFDQ8EHaWtg=;
	h=To:Subject:From:Date:From;
	b=A1t5YpY0e4zewn6fndka9BLvTIpdokc/ljg6eMR5r4Hx4yeRJazOV++lnWpKO94lu
	 3+FxixvDjZlzSpNVYiUyz6eNngdZDkjr1Hs2yuPk/hLtdffFVxDlpCbAcnM7oyP03I
	 bKjjayo2nqzi2UiKvwWnlo1vKftR2C0bPA2daNh1MvJecFiIxelsDvPMoQpocDayCC
	 5a0szwaX3UDoxTLtedJFW79OSbYu9Ts0gnN8d6ZI/eomFa/TJU/jXnvEK8Kcg2XSGR
	 zkG2ZxrtQqy30Q0WSyHtWtaCesYC3CUuLMkfs9V6LvjgI1BxQWCUAuc+RYK4D5J3/R
	 Iek/MjIZxfXNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94141CF58CC
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680755359.5127.3237320786216876118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479f0487bf84e38a3845d078413404bb6fee7e4c90ee051e2379e6527dab6904
Date: Fri, 20 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726807553
