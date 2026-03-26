Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA43469F6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774548294; cv=none; b=PxXA9Fc7vEq1aapga2+oM7eSDwpXhYoKw5eWwx2uIZDnFEikWuv+WC7YSs6dOCdai2k7lNXomKgmrzlLqdoqZoVMZaOcTed00zGcoD2GG7PU28NutnSAdOTmdUoUV9bIebPdCP+vcN6XyEkROWY0P/sMSlH92iJq5engbIemhJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774548294; c=relaxed/simple;
	bh=K0C6bvpkNLyIf+HR5cTIQRcPDuq6P2bvVrqUXRx8zZY=;
	h=To:Subject:From:Message-Id:Date; b=AF1FholdkAEBsMOmeiO0cyj9qWLZB79Vxt1srWfsjtsxMM94zERX97wVRkxyqu+/Fq39Zw463SqvoRfxhtZuibyIARTUZ1Bj4HZVFj3rOxsHznhQv62Dpnx4IciL2UZS4g499KohEZf6acrfnG7Wvhq5Ms8w82ZZbuRj35ZQOyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU1GmPzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU1GmPzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0877C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774548293;
	bh=K0C6bvpkNLyIf+HR5cTIQRcPDuq6P2bvVrqUXRx8zZY=;
	h=To:Subject:From:Date:From;
	b=JU1GmPzYUOb8YXIPqjQYQAzg3cAxqMkFD5bJHvPiAODCzXOoUvVtMfd4C6iUJMtLS
	 dMEAmwpEoOZkjomjogb4aFGhffo4XuQD0OW1HQ4JxI9p8PPVKApuPWWejQHBygccTQ
	 YaLP0WFwQLWRpUl6wtW2/1CmKj7A9rSYXUorFSjYkeWVmcV3vIaxkhXbsZj13OYvlO
	 PD7dPr3keYng/TiwcdMNOInP6kSW9vDpahqFNO+JCXoeSlVo6+dgRU+VnwBYv4c1W3
	 iR4tU6COeVJ362e8qZEHAlDYg+xoiQQQ154PfZt1Fpcs14ctjoMAR4zACAo/eyCZv0
	 YKgjc8M1XhGFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9195010A88FB
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454829358.26095.8672715820062211926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d18e1e290864a8ff705709c01f19929565affa53d73be204e608353a6921a5
Date: Thu, 26 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774548293
