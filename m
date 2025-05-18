Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D428F4
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747577994; cv=none; b=CecnXBWMkh1yIh3Kj9ksWweEXm2G+XK2V/Gani5W659FxSJidS+2+iav0sboviAvbPtx4HwhMjzqrLfWDdxbTCMmpCKwfzJQdOuNouuBx9kfDbrVb0EOG0TGp7CvaZo0+lnWuP27swlRUKm+NTn2Lx0r3ibREc95ZamFLEuZRi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747577994; c=relaxed/simple;
	bh=gMZ/oF+CzRl5N+m51uo+63rqEjfAcaXTmVr8lcLAKvI=;
	h=To:Subject:From:Message-Id:Date; b=HVNOogCi2arp2krTUEd8hwCD4ydskN3LSGCSiYzjeZqXVMHqkrMFVdFoJrdhpwGvDPToXfPNUMJG85drF7WY7JRgUOgsGHMP0WGprq7IPrPIJt42xxGdac+ON09VM+d+eoQE8e9TVJjs7KFf5t8PCW78dJm5P+K++UPMi9Fpz0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXmkiY+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXmkiY+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F7AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747577993;
	bh=gMZ/oF+CzRl5N+m51uo+63rqEjfAcaXTmVr8lcLAKvI=;
	h=To:Subject:From:Date:From;
	b=qXmkiY+pcyMt4ZzxO2xC216pY3qBh3WAC03R+CIKDDqXn0W9ZUgvahzOjiiPL2Mju
	 39QUxnpF+NZd5e+b4KTvhcd9ay7NE13oKDeKC2QOH/XD/kH6LLOgX7GOC+OlDY4DVb
	 nwssSV9UbBmoKSmxqj/zOTsLUWbNUL6fx7Hsaa4AlCiWbT9I1dhDMpQl2GkP/9p/Ld
	 msuJa10Z3sfjLLuVgqGUSPy1uFmJfiz/fUTtOnHxJmlw1wT6sPvi2mjsle9T2WUujr
	 bGDg/gKbr1iUulP/6F0K519TxykErVcdop1b56tEmy8tM2CEmZQziL9LIOkK4qOgRQ
	 5CmkDFRTjtEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93673C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757799357.12978.3212881539742317564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683d8d4c06244defcdbd1d1301ce2f540e4235915ba309686d44c85f39c755df
Date: Sun, 18 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747577993
