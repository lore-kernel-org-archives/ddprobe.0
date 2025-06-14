Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171BD2046BA
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749943794; cv=none; b=nOiAHgak+kkQdgMV3FpLgGOy8TjnihyESC/iFCooyC+DynN1byKm/CwU27Pv+ia7xN3HBUvRHebw8SwpWP4Klhw1+4PpwTDmkgwUuZ9T9nIld8q0+SVk1nny3ZOFzvBp3RIugI7I5rt0qCK8SjLvS0qyTCpldE6Qhe0lCeJgPZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749943794; c=relaxed/simple;
	bh=zqSVRlwTs2sVs2akcCK4sEcaWlaRlw5+4XFOgHbXmGU=;
	h=To:Subject:From:Message-Id:Date; b=ARaJJq1LHlCVEOqD1rjiQSj4yka+eIgLu15Hf9Z8bOUWMUs++0k1YMgTz36h60qBhK4u/+ghCwC7Mcsm3/GTLsQY+lHGolTOVEZlLQ4oa+91r1OaNj20obXwyEOu1IW1611BuYUxuzp8KtZ6ECAldc8HpgjHfdRojxzj6uaYGvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgM8CUVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgM8CUVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FE7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749943793;
	bh=zqSVRlwTs2sVs2akcCK4sEcaWlaRlw5+4XFOgHbXmGU=;
	h=To:Subject:From:Date:From;
	b=NgM8CUVfoT4vIsyi64BsxWZ5Snm5AxS2312rPyRpgx2Jl8+5JyZcPTlYUdiBJJM5l
	 9B83OEgotbQmOusN5MDkWXobLwco/U14NagPCKXCrcyzBYmq3Vxfg3p6RnSeItaPAs
	 8K0V0hp6FjMXvbomuAaiVviI/xWQlu9rM2xje0kjL7vaduGFiwgbHzcuD2qUmt/VT8
	 OjtgT+2Q9Yne2CGT9byQQL1dGgxcTEATkCcOTyZaC6FEKThs1z+Pgefewwm5AGEAqv
	 O9p5H/by/EzKj1Jp4GQZ+zQb0RE6s5NxQyrRMuHepBvNqfUD08zWL+fGbaoy4zA8bw
	 tWf0Sk68JDd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9103EC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994379357.7749.827016902409558312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d48cd5ee4f86eec9d3ae06f3bbba076be8f52d0a138b05282963b92a52366fa
Date: Sat, 14 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749943793
