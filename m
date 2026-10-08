Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFBD397688
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791469834; cv=none; b=OcEK7bdDlM2qpSHqxiELpsZoz0eudW7E+7Bg0HvgplOHc222ZIU85TjqD8MydDt1jxDFiec8oi3nYDE7UZVqVo45O9KA+c7BZ8HRHBpf3DfVPGNl7lIfZPdi5ROyvJKRZeHISbwh6e1GKC7uLsH2ZiZ132OLkiz7hFkk0VTCerg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791469834; c=relaxed/simple;
	bh=Dr+zLlFflweoFaqOLCWxg9s19AhOyb3IDG5Inx8Ng4o=;
	h=To:Subject:From:Message-Id:Date; b=d5ytVODeVLwCu/kTD/bSuTCYa7SQQhWFLO6PAtZiH7feKlMgImCLt2CwpfwvhLIIEH8LkGHe5M05FoxZeIqnqMTIk/YgnR8cF9WSLXuUAm/3eEC442QC6IOyX8Tddm1BVgsg1HMm+qK8m0xSaecgnvxnPn/myvLZV/kYh6GKY3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0BraqSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0BraqSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D490AC2BCFB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791469833;
	bh=Dr+zLlFflweoFaqOLCWxg9s19AhOyb3IDG5Inx8Ng4o=;
	h=To:Subject:From:Date:From;
	b=b0BraqSKeLkW48MYC5q/xNV2kIrrfbUCReVDCtTO2039BKDl7dN5xCMUNIymmNVmb
	 VcPQDwVBiBRcYsP6rX0D8ap3R1eBDZrjXGG72gihhLLIDg3CLyUcobnwyuFLCFaMx4
	 IZLjRp6qhnrYwQ0KJi+n2ohC9fJLxWBiCY16E/p8HsjDcFyrDeXaZD9XhCfvFdxzg4
	 Aqm0SV2htCdcIg5cieUi2nAQGlZb5jaIUmsHL8LHXKhpFNrrumjqaK8boh3oHaEu9K
	 DNXVg0iGSCulR2o/UvUVlkJ0JD/bgMRzsXPyzqp5Vk8C5RvaQB1/S/KiGb1QS+ChSS
	 fI/7pCFz2cF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE7DCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146983370.22061.774476698458977193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59145400a6697fb304f3b135c6801c29133c1606702bca2775a70915483bd6c9
Date: Thu, 08 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791469833
