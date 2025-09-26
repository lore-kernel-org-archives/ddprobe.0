Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA2F1534EC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758859794; cv=none; b=HFgdpODE9iy3ysQY5NsDaiqx5gj9KqLbwzqIIctIDIdcH9jbEj9oajU+RmYs/bc+EVjkPOZQRG5f9AJ5x+lW9YS6HCM/Ngr0dOLpKlsIu8on08O1vlc+9sMl1BnxRVymIZj7vYT3ftjXEfbBbsp2/pievphoNvPCxk6R9YmQ0aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758859794; c=relaxed/simple;
	bh=tCNcIl11k179V13PwQPyJ5InZtjVqMd4Oh456r3+9/c=;
	h=To:Subject:From:Message-Id:Date; b=EGnN3m37A1z2Megrva2kTT3E6ESdWT9L57a+0wRU5tcPzM7UgKnVv4A/K79Z3M/F1HwpnJhCZgj0I8Re9FIO2E5UAn+GiE/xG5PrDw+7r4Sg26oD8DuF114pp7CQYDu7b3NmesMxScpgrE8qiIGbRvB/WvPPypMv7IVCnjiKuv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFcCSCHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFcCSCHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E52C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758859793;
	bh=tCNcIl11k179V13PwQPyJ5InZtjVqMd4Oh456r3+9/c=;
	h=To:Subject:From:Date:From;
	b=hFcCSCHMDSoo+q2+HUUx7p5EUGvvv17k/HRNBNa6DID3kz8iGCH5K0Y5O3EHK7v68
	 j/D91YAm6HGC7lsF8w7SjFKuIpdk/PtHuVnfwHepS5zbNi767Ey/6wSDN+ralEXMCG
	 U2OK5Q/KYDsWs6nf+i+pptctB5Gw2qYbos1BWHJuOvBltDEMznFV8KWqezYocgHS33
	 Fzj5fcUenWQL+BZ+xhyWy0RcDH3dECU/Vu/wcH5GSI9yJvyMSMZe/27n5828MeMhdQ
	 FYTjCPsxCa7PUHTIHLmeD4YmLEnhFEoG2Fpv9VeShcr4u5ovSeeMLsXDBc9zJx5FGI
	 ZngiIuKwiimCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA1CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885979358.5105.2336955583452478437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd20ad8bf74dd350f6caecda4015eb3134b44800185933271ed65fe09bf910f1
Date: Fri, 26 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758859793
