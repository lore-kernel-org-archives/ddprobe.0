Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384A31E51E3
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739908734; cv=none; b=te6wbCxtXUpviEUQeFzf8RNG73Ub3eLXO7eq7e4Yq3UdGW1yZ4EmL1KI5qma+IEj1vSPXtlbPip7QPPZ8Rv22xsHZqRHw2G3MCCNIBbDKrBkg26xvKy1M9/XLqXK3KjcY580gWc2zFnW4N6dRuPm9lC0WLCmUFw6IA33nbkVsAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739908734; c=relaxed/simple;
	bh=wWFqTUrrqTa+Fx3H9mJKdZXIsSFiA9kwtsDpnMBkrPE=;
	h=To:Subject:From:Message-Id:Date; b=akvfqwMjfWeq9WESVrBnDoklqPUzhZ6AUbv34FpxQIOMETUPDeGVo008qxtZyPEQZCspimJVPsnmwIKJYUR374UCIq/y5YDQOOOb3gHRVRBIEiPQcHjTDwOUSUqmv9P1q/mlaXOkfWED0/UvFZ25WJmRIX5fZeB35bG9TzQWR0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHJUbHAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHJUbHAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD71CC4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739908733;
	bh=wWFqTUrrqTa+Fx3H9mJKdZXIsSFiA9kwtsDpnMBkrPE=;
	h=To:Subject:From:Date:From;
	b=mHJUbHAY2JJ26Z1I4xoTXXyBDQi4x58g+8qwrn3xb3l4ratw8abGo/HxouhLVkJvu
	 AIm0o//o+bexmHQlbWwVM0D5ih4MH4GKcZERjhWuJZCLqvmjRqZbuHGQGvUnDHTkhz
	 H5Hs5QYVj5wmhFuK01qPt8BOKu8xVipo92UJgP7VPI8LoISKA1jvSBcNhDmPD9qwhk
	 4VIZNreVtQUZqfoK6w0HNcLyN5MwaHz/IT3SpHk6XGlOdZS3vcnhEOki9qRYfschul
	 S83zfsmNWQjLRJtP6hPLWOhSyYsoM3iwX4EoiA+d7cpQ6QvMneD0VH/VKNlAKZECZK
	 atzUCs/G/+xIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B90AC021AA
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173990873362.4371.2818740361272802698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a591a856136a9a0794df0032653491ac583915b3375813950c542813f11a440
Date: Tue, 18 Feb 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739908733
