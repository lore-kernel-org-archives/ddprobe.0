Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C3A42A9B
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746471594; cv=none; b=XXDnRS1qZ2O2hw/qDREkYUEG46pO7gU3cgJqaeJqhLNJ6AL1sL4uH+E9nqgzbQauIkvr/2Kgd9PF2lwz1mzZ+ir5Z5oQLuw90uQf/XuN0VJhZrfm20RDyjWv2w8BihK+66TAgJ7WfviXoqNywtEOBB4m6k7BAV5sP9r5TyctdQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746471594; c=relaxed/simple;
	bh=CXoRYWkHtkb9PMb+jaj1U+S284wupeih8RWYkUlO1Yo=;
	h=To:Subject:From:Message-Id:Date; b=r41SGJrKMT674LJ2KQgHShwEJsscR204LhIGePPsyDngYHRG2tfO8pmne2EqIrMkfZ72t7J3XBOJTOyQlvhS0I5c0jisT6Tm2RyRrDBqDnQfND5TACpj6SFXz3E3QLV5TyV2EXv1oYFfJJXwXUo4xs3CRo8oSWbjVDVGUu1+LTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJuZxwqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJuZxwqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A15C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746471593;
	bh=CXoRYWkHtkb9PMb+jaj1U+S284wupeih8RWYkUlO1Yo=;
	h=To:Subject:From:Date:From;
	b=gJuZxwqPMGKw6rFNhLfVIR4PBOWxBvp5Wm2MjLNMRmuEPS1WWGR9x4mR9s1/za4EG
	 hFgXywmbJ/iIz49gdHp46VE1VR8o/lGKlHauEdzNpXnalKjb9GH8EmPK5m0F4LIt2j
	 ml8ReljlspVDrX0cHdfIXRBatH6i0qzEwtFbP65ngkkckVv6/8dOxkJH5mIjT/6Ea0
	 00QV5mhWPHUbSArU/Ve6jB3scH2TP4UZji5nxFgmV37JYT2CgdR7d2kJIKJtN+Geye
	 vcyCtkrI7oenQW/x+1syFhdYl5UVmH+BDLmmoP97tbzBsa3mpQ5lTtRHCANam8y/A2
	 w9y+BzebcjpJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E782C3ABBC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647159357.18650.12118556494070181816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964137a3aa4480f50cf1b98affd2499bdc100febaf0971aea0c32b8c1fa2dd73
Date: Mon, 05 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746471593
