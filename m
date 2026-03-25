Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F91B39D6FA
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774432494; cv=none; b=O3PDwfZ74CCfnaByW1QfU9bevZFpQKFEia/sxcj1vUnudZJX22mOD6WLYD65qZ8QlWK57qT0TjVBZFEkDYHZV0L/3XRkDW6oIzr3MKvmI601WiP36EEH08gT7WZOHCThzaz3elPZzpAjoyqvCfytLhgztSHbH9Ww7Z0Pb409AFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774432494; c=relaxed/simple;
	bh=oRJMzqvMht2iTXpXGrVv9DCeP/9qYIYicFOnem+kJ4s=;
	h=To:Subject:From:Message-Id:Date; b=dwVqU+atUz+r/JS9K1WmP0JEHGDxcr/Mt9vYulD56S9bA18wtWkfcpbiJOJIy1koy38ojGwQbL6+A7CFyrQejhRh9v9jQXwoKNdHiNeQCNZZ0oOWYbsecCM8Hk6KuXDfHIrqjEkz1F/LVjMjupmALFug1+0Y/Iv+Rp0cy9dcZ9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxNo9eYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxNo9eYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774432493;
	bh=oRJMzqvMht2iTXpXGrVv9DCeP/9qYIYicFOnem+kJ4s=;
	h=To:Subject:From:Date:From;
	b=uxNo9eYnelhfmyL2rh9HJP/WQnFDgt8SienXRwC4pli51BSmk1tpfUkCJfHpGQhlj
	 Rg+F1iXK1uQSgo5AhEd+xxxcoAWd0iOsGndGFu1HA74xoZeVMG5BEgYLmpNmgybWsA
	 vGUluDGfm1fDQfeLz2RuThmp7AzaN25o5ZbREgUpmFjhCSvEseV08DoOT/ty3irASH
	 ERMtxgbkwRWU5ZMVcFAbRS+tVo0mf9T0g76bSfIUVcWdV1p4IozSqr9+Su3oFSNOAF
	 15OSzVXl4Hm6py53X3/+uasThz+Y5aAgKpq9x8yXgcJYcZhF0s8Tg3hDvOoj6G9gwn
	 Myx+pXdeLIKxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3BFEA83D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177443249360.5097.11040095326164651991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f360e3cd850a258c2555500d6df01eae37a84bae628d406977d00adbe59abad
Date: Wed, 25 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774432493
