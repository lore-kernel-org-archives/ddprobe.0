Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536B22D5C83
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786848034; cv=none; b=SjsGksm8TYYvajmcjcqLWEOUiFwR/ClA3vh7+8jCfeBPh7AIo8cxb+d2gN/CCqxTL/pN44nnL16Buz9DL/FSVpGX8CqHtZGa+OfL7hkp7OQxvB2jI7hXpAJG/72SLIHY8ipRzQDjY6fHqyRuSn+Orht9EzfpMIjq6vU/6PZHB5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786848034; c=relaxed/simple;
	bh=4P+czp9+6YzOvVAR2cZRiKjpPGsM5BhfTAplqrbEUuk=;
	h=To:Subject:From:Message-Id:Date; b=pHkPcm9Gx4IxBO9nixBodJi2X8yjEqnD9glUHs/tuTpUOHRNcLZrhaSpX0TXhrX51KQ/uhYtlvr+o1duR1hR69W6gVsfP+BVWT31GgB+hPJ6ve/D5PSgriCh0J9sTKlL67LM59YY8xzi38WrUAFiQ/SORYyxEb6XVaRsYwtOA94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIjbHw6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIjbHw6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE31C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786848033;
	bh=4P+czp9+6YzOvVAR2cZRiKjpPGsM5BhfTAplqrbEUuk=;
	h=To:Subject:From:Date:From;
	b=iIjbHw6iLCt51NRNOFGt6zj44SC/GTMn8gQKiJfPkwEYycPyx7rpGuMqXH1/SHy9C
	 Fgd7gAtAqOtChtFlP9RjoxM4qOevLt4VcvMh5f593/3H5/7Slf+KvYjR6QMAk2K/24
	 RELBxIxyY3qFmFRMc57hHSNRiSjQnib2ZXR+rsLk/UM8rUk4tTVHNTrkS01N5XJtr6
	 aSDqUzKzW6HJh8I2JzWro1P0ti6gCgOmXQvWADRW+gt/BP3YRbuWZGizZXUBwrwsTC
	 q0omMjBtKE/DwhHKYlbKf59ciECEdSlDx7aevNN7bxTg/b95qAWKj7kHjetbS4mD25
	 6+p+SUiMV/rqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF559C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684803369.25850.5606380141558051748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c460f5aca945d907f4b776b39d894399536e2376152bc0cfade6c1cf021814e
Date: Sun, 16 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786848033
