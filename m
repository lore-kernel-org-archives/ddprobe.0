Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2154A3D6466
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777534657; cv=none; b=p04LlyqHKBWfqmsEapaFYaZ39ABkrN3TNHxtttSWBIWRxVdt4F/9xurwXCv0swyaFXl6rzrG0jZuHEpZkUgk8geVBg6Q+lcUJ2dn8DgeOVNBXU8mmd3PxohBXIOrKV7BCVLoFfPFi+/a9g7rp1+GSamnYiNGKEpoi7OVVGatmt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777534657; c=relaxed/simple;
	bh=Awd2PyXIQhsevV4nw2/bC97/dFM46GmhnQP/5CsP3PA=;
	h=To:Subject:From:Message-Id:Date; b=kBN8C5GxSNpfGR+0pzxpfOOXHHMJA6AC2UNuUkBlo0CYT2cxMi+xFg0aq6yaL4NcrU/WN9/tZAHEsZizWQGwUa+GsIGbRFN1toso5Bm2yZKnSucP1K4gPeA04fN4Y+qbrqYMM0SU0h+J8h78nv+/0q8LqUnI2vAzrUNtYKNx+tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUeI4rxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUeI4rxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD252C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777534653;
	bh=Awd2PyXIQhsevV4nw2/bC97/dFM46GmhnQP/5CsP3PA=;
	h=To:Subject:From:Date:From;
	b=PUeI4rxW4fzyl8EvuHO20uvGh9cS8rkQ+I4OtVs9ZAbzKqPLoYd+QjnmobiHKyORx
	 f5z6EoxgZRVVJ0pcunXoX2UdQ3lm/jdVRn2BeDgotaPiqxXhI3iC4Bh+Rimrq7+vEc
	 yVlkAA9UcdQNiDhWOmHyykt/798Y1AfU/h2Jz9vr7fCDI4IzFh2iTyrXPwdwrtlbNn
	 4h9g+4/33MOvM/iVIx9KyA3XHvAhGhDWvikoRb3r9dQSlLUJ24ETYzUjrJmW+Epi0t
	 x/vdbtTHbdLB/uABoacd0zxFcOKKlwIJhK64C0BXbybIilZ/6jvlYw9BXj1hqfoZHn
	 zEOl9dYRu+isA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC19FFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753465368.5317.11790105196730223076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee54980e6127fb403b5ddadabfe1fbae99d3a42dbbb145642045456377d6a43
Date: Thu, 30 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777534653
