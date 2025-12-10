Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC807274FEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765391573; cv=none; b=Bf3F6IxXMEuW94d5Ey8sEm9tMgBWrOf4jZ3FKBozWzBiOarcLYugsSXkU2SUlBP8wLuFmeeir7wALW0taTJxb7/WHEfLdBNLFQIfl50cP7/KbYlSaOlkziHyiEcPLoPGdDPRRnzDZ0aa9FtDzErVku4RB10d9moER8KVhyejn7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765391573; c=relaxed/simple;
	bh=HeZZNC+oAYNj6Xp1wm1l1ysxuS8FQavbCfd78f50m3k=;
	h=To:Subject:From:Message-Id:Date; b=tNO67SygLH3EbN3mFJ/6qfI0YxAWy7aYunGrw9M36PdRINfSGbdD92F1M7xpLJwCxZYbsSUxL+raqdW6uq5cMUtjLsTJSgJgMKbNOGEva/2Lc6ZmvvJ/D9zT0hoxhEoUO221ugc0F0Vb8KACE+s+qONmC86Ys4dAvUXL/IPQn1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAl320Az; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAl320Az"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765391573;
	bh=HeZZNC+oAYNj6Xp1wm1l1ysxuS8FQavbCfd78f50m3k=;
	h=To:Subject:From:Date:From;
	b=rAl320AzBlmWvpiP4DwOYs1t8tTj6d4DNq+pnwBCuNE+X60jSeBuEHOA/HE/mVsJg
	 YCKvUN1hM5VHxtdWyLwrCv11ItZWjH8JEW6y/7kuCvd603zzg7fkvwWSDGL6pRXOkh
	 5q0W3Tukm+1eOPPSs4uCUdPqkk0OlJhDTwy0oIiU5rF8CqW9PmvCARLtFF7EMWSFFh
	 8i0RSutDxos50FwKgXxjuSgEtqYcG93lkCAspZNJ/d52+lPjXlKp1iJFXMp6ctRemW
	 RmQ6XMDRgOC+AMGIU4XIiC79/xhK0lkmqXvnWXhjN0thgmS30Gpp0IBFjfZJr3Z/93
	 Lg9cOgbGDBXvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D5D3E76E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539157358.20697.10773325577040227629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa673e2edbf11cfee652af5eaae9bddb6b35c49708fb9dd3d7fa0ae1c6566dcf
Date: Wed, 10 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765391573
