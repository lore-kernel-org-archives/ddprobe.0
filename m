Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17D2DF4C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa+PQXil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768DDC43390
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705318096;
	bh=uU9QaUBSlK7Asoari56YjbPPArB8R6H/mAqpomZrFAc=;
	h=To:Subject:From:Date:From;
	b=Aa+PQXilt7hQ2T0ZEIiY3uydaix8JuKVDSLcQQNgwmIsT9y7ASFRLWkd5n46cjIp9
	 Tg8oY9Nla3cpVxaYSaRQX69Sizq5iGitXsVUVv/WjnxcuMvxAF/kMRihnMoHWxLoek
	 NCMbXpridDKjlP3waBMQgMgik5uNPDWuLo1hHrMBUs4QROEPUoDcsAB8FxrqkI/v/B
	 CZc/AxTBkml2UKs0lUXUgG5wNaEkcrqZGHBIbua/s8n1e/m4srF8+wrx96Soh68G7A
	 LwfP895z2BtzD08CS3opDCFPD1adXwtU8KL+hy5CQOUjAAk2bQ+Pjrn85oUjmfrtFb
	 58nGqHwy4Hzsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E40BC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170531809637.18654.14397756918098006120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12be21a589c48ac715b65797b4a3684aa4e1175aafbe914e0c69f44ad4590a7d
Date: Mon, 15 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705318096
