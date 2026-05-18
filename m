Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B5F3D5645
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779091234; cv=none; b=MAtM83IvR6AYZGGhsqUfN+OaPDap3yX+J/1Kd2fmCZcvwd8xR5lHHIov43QkcsAKdo4ddkeukUezL+j3we/I2foNk25Mpq/G0Baziw6xGUyFouGY9JuRG59hYB8Sa7x0WrjThAxicIkVvbvs7ul2DNzzPdY1sul48WiCb0jnexk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779091234; c=relaxed/simple;
	bh=8vynlAoKJ/6aNMk0+wKIIkPCHsNqxAqacX2CDSm0rwg=;
	h=To:Subject:From:Message-Id:Date; b=mLaP3f9RzWGi+I4y7+1CtfGd98VK8iGO4gRnWv2Dz8vXG3kmfzs+dUQlxJV6P7S9O+rQUF5bfs04o+zWH0dYFeCrIY7eZrdUovUw+mmqdUPio0Pk3nHtL9DtEOMQ6pgTImIrhPv5XawgSNNIHXTS0A9IomzH8bVC/Lxy7aw/lKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti+FbLQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti+FbLQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAEFC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779091233;
	bh=8vynlAoKJ/6aNMk0+wKIIkPCHsNqxAqacX2CDSm0rwg=;
	h=To:Subject:From:Date:From;
	b=Ti+FbLQ5vTCH7AQnzuL/4boGnk9dCJPJzXReaLJ3FouJnPMpQ03RwyjWREDjJ60Qs
	 3bsOkBinOmef/8QF9ktY+R5kuYEdgCejdpk7WWAbTmFQx6cmI99pO8EUEpqCeYBnwg
	 gXnqbtpRalnBd6E33xBKYoYqbEMi9+TgNizIVcMix5YHR/EFHTPJUZWOq37ltw806+
	 3y//uUqe3qmUdzWPxdCTLu82eV0fy3NxPeYhbsS82JblNtbo+0FdaKv5lhdoxw1MZd
	 98GszEFggE96WjJ0sKaHrHQSfs3aHC1l10OLYjkwiXZqpB+tXPd8oaxPMvxeFJtQLd
	 wFCYlPtUJYCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBBFCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909123370.22450.9797596917572940507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3feb3ab3f8234cfe855439eeda1f180453ff34d71c1584f20ca85b8dd394d663
Date: Mon, 18 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779091233
