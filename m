Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D361CACF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384354; cv=none; b=Xtsi4YIB2AU0rNonQljCxJCVmfXljW6kzGGwLawNPRjRa/Fro1yDybIqAQjeO5SO1l3FSuVVtXFuFnslo4cMQikZGiEt9nCIJ8NrXPJ9IGZKCplnIGHPKy1mdOhz6vyMxhCzmHrK6xu7IFiP+dPQ+dJ5O1Uhm0yGqNiNAfYzM/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384354; c=relaxed/simple;
	bh=CTTdU7uOal8f9PxZwmmwKqR+2VPPIjwtYxJXMuQpVZg=;
	h=To:Subject:From:Message-Id:Date; b=dCrXiZ/DOCh+jDov/AyCxk+nk/TFOlRbBhzr7ZWnwujJnYrq/m7x8USDmSPm2zyMYMCizjlZ9ENH6zS01U0HL737zUvLfY8WcYUnfLTrDKAbmw699Mewo5ujJDXQkykK/H4Sf7g9CgkrbcI6VWkkLAHlP3tUTLF6LNQb91bPRbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZQ+zJz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZQ+zJz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1DAC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728384353;
	bh=CTTdU7uOal8f9PxZwmmwKqR+2VPPIjwtYxJXMuQpVZg=;
	h=To:Subject:From:Date:From;
	b=rZQ+zJz6zsZ27B+g7yvu88EtcZ1x6N2/mCIl9hwEg9s9x6HR1msSPpXhIngcrMbxZ
	 7U2TpONitEB7eUTTTN9N6iPfzr5SlF+Tzm1iV6lyu9FMDl57jRTJt3Zcx/v6sySUr/
	 jeNTrdmmDt4pfwLxIShFBDLvbJ4KYYBPi3yGzalnQsW3kioa8aeaPpXq/DqqUSMToc
	 mZsD0b7MjrZF2R1N/0LYSASv6TaKMLYd+Fv2YTIhrGPe94HOOgsCYAWCbEbOjLLgv9
	 ipS2IPWsnagzhKl7lHVrN2oVe4ktOx1Gq86w0WUacZR9s78mOtmZoxky4oDgPvprfV
	 s7IOgW2RrzUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93420CEF14D
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838435359.4102.16793360824802299230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d308570b848522ba150a1b8e29ee00384f1222f01524f8da4491591e68a023e5
Date: Tue, 08 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728384353
