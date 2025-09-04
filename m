Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BF21FF47
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757002794; cv=none; b=l2v4FIl20AX1E3e0L/IW7nSFJXgsMnnYRsE8EWyfQDwVhuWQHpm8st971CiwyUtwOBJ8NyaBDSXUmKSygP2KqvpszO6py5js+NOq1bpodPQ/VTBR0Y/9On6DRPG8StOlqRgh55s06GJc9q28FGTHm02vqLDOTLDoEA8YFsVkL9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757002794; c=relaxed/simple;
	bh=i3R04hJvM9FIr/0lagxAqB+4KrjKN0UiWHuH7tUWQ7E=;
	h=To:Subject:From:Message-Id:Date; b=LVJ6RKL4xBpt+pUlZGGAEpRQxCRHH55ejktt0rAO9NkupeDIkm+Xf0HqZjQEwCvhVTfu8mrKNFYHOHBX/7SKV7rdX6YhFh4v52/qGcyM8bj+YH/opbFf/XacaHKS6phK6Dpv+B3QTrPZhLhHk2+giPPJBCwkTCwCUBexLRZGOqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6NHhi1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6NHhi1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6389C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757002793;
	bh=i3R04hJvM9FIr/0lagxAqB+4KrjKN0UiWHuH7tUWQ7E=;
	h=To:Subject:From:Date:From;
	b=O6NHhi1ujUNvO5dNCozCHOBwrQGpTKj3DSdVlh5MKk216QeKjS4tZ9sPTc4KebnQe
	 q8LE8oB+bL9ccoDW511DBHJ5Xbi3BXAOG9ezbGxgbHRTooeqx9MW1RcF6PLK7Y2vEB
	 h2Xo1JuIQ1hSvIPp1y/HHAN/v1WqVzpW+zN74OAW6Sw438bfzaf3KL450FwZE5DsUW
	 /DuXHjS1p5U/2GCsAjEOO/7pW+CcMciOfBQ8656avcSepFRQ2PtC5SB5CzoIpchCK3
	 yLGv3WXvITjGod6lVOsowDFyR8XbHQsMcAMPG7Lu4uCHbnhZ6jSbxbw4ttlNB83gvz
	 lBobOmUIFTGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95120CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700279357.9440.17615457847242944316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c841dc343c5460df468c8600d52f28f59186783cac85c45b06d0454866c56bb
Date: Thu, 04 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757002793
