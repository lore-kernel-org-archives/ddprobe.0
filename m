Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A812F3E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737296754; cv=none; b=sOfWC/sgIz1sbL2LtPPszUs5/AEZa3LAoOqKT6LwIlkZz6Q5ybn34VgwvPsBCOYLcatLz20LFR43h/gMUyMlsH8IVS30q4tQtqDaH8Hj8cUlZxRbi1Xtlx/iHcJ3Ja/LlbbC1uV4CU8R3yNpsKkjGB8XNLsEf0Mb2LA8/3uemLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737296754; c=relaxed/simple;
	bh=67GwSVymMt56yJ9RQkEEJ8A7z5QmJkT/Lw4SzlnuvEY=;
	h=To:Subject:From:Message-Id:Date; b=M0jfDRz5bZXyVff/QjOCdnsOOF4HhqXLJ4OImJIj+FqImV8tCsRf989seTD0LpDXfnJNQWiGerc0l2cUYlQA6LVbCSacaoGMPbixa43OUaoENYvPZVvDb/xP5+PpaKNo8daFMZ3anF4XqWPLiihVdWCaV7qfTYlLCsuOkMMsn40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt5/tmfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt5/tmfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B95C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737296753;
	bh=67GwSVymMt56yJ9RQkEEJ8A7z5QmJkT/Lw4SzlnuvEY=;
	h=To:Subject:From:Date:From;
	b=Nt5/tmfsD7tgvTAu2hP1AslDOnr0Oh0l+mT9k4S2OgfrmIGuneE53mrtYHRUteFNu
	 SlNN+Yv69d+A188HzXx6LxCn5oT6QQwXZ+7orUJICXtVzg5NLdg05frlYm1l2W2Ric
	 D3tIVRvjYGExj0tjRqkcBczHB6UKMfBEkppB53sm39pO0DR+DZxtoB/PnwOEdILiQc
	 DN/3jGBmGVoqYPtEEEdxDOpM6vSvcvliq6MW/n6BzFWb9Hmq1LcNhe+G/vJqLCNSgm
	 Z8xfagOMpFcqy7CgtyiXM5JEJAemrRthLJHM92adH1ak1KLGqhJWuQZabgUYS2rsXg
	 FHma2rj9ZKaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F083C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729675357.8516.17214479281456028903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3810224391c920a872dc1b29b7a13a486def99676b7c85276f050098d60787
Date: Sun, 19 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737296753
