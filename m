Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD7F38F255
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784470114; cv=none; b=sZQeMN77I90yni7ixehNGfFcDGfcXSAm2wyxXpZtLJ1TYqxHVWnbvxPTRi2lbwTrPeBOFbJG8SPWiUa67xqbsxphUV2p6ljKEQl/6TSxWqJwSkmMQ4EuB3ahNkplM3xukGFKVdR6jeA+zym+ZRff89Zj5mq/bSy55NXONOEZW2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784470114; c=relaxed/simple;
	bh=CvBTjRqe9Ub4+zbpy0CoSVBpi0kgsJL/xtHFENYjFtw=;
	h=To:Subject:From:Message-Id:Date; b=nYbr1mYgprXqFTkSaJmkia3+QDRUco49WZr2oqN5J4uisisLUMCjpr7g9NgqiziNniA4PJ+nD5KTJNRDMdMNHUzWICSmy0KJUaXpy+2bQbNxitDqzExMvPvoEqjAZv4WK3PgE0gu6kAanxm2zCELGUKST6cK2WDWGH6Xcvp0oGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JomrQ/5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JomrQ/5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEB7C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784470113;
	bh=CvBTjRqe9Ub4+zbpy0CoSVBpi0kgsJL/xtHFENYjFtw=;
	h=To:Subject:From:Date:From;
	b=JomrQ/5sPFg5lI0Dbk7yf5Y3XbKlpN/FsPNWfUyEZJuRI/A83Vu9+Sse/b2mXUQCq
	 2+TZkKqKaGXZLEnnFamyOwUPAeDpSXeQyll8VZnkYNcxw7AaaPuM4yw+IeqU+UQ2Dl
	 01B28bXJGE3yKxsyME1QkS7UiIxMahng8IQqQys8HYudXxKYxbTjQhBHui8HsfNe+R
	 qI94EDoDv29Z5ZKVxcDS7DsHb+58vK3EBlohU6uiJ3CwvnTVCamE43pGEPgtitUqDz
	 hX1d25nZ37aIKXTb/f+vUjtiFnv15za2RqzQ5iROqJdttus3NF2nRr+pUO5V/ZEh/l
	 U8mQkqnEmTMQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88CBC44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447011368.21202.2243532260717734613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03bf8842f0be07d9d494348f442c1bfad9baadd8c24abaaf5ebdbd6ee64dbeb
Date: Sun, 19 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784470113
