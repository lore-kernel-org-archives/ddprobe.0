Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A90823FC41
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772917494; cv=none; b=m9sMgdS4Sig2GnspeYSXY12nFMTiG9/e4s/8s0vSS0TfwiEsC0wC+r2WumCZA42I9wc8IyEnPMdhXQcF0QBs2bFoiponmh/m0lRaKU/yBSnlq1RD5LgLxTZTGZZOAW9SbG542l6EzM2IgninE5ZTli607+tmaAyx8NwzJ8Qd8v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772917494; c=relaxed/simple;
	bh=IZpeoktKlbD1bvzF/mdNGjp/tAINdWYwCKEPYWHK6nU=;
	h=To:Subject:From:Message-Id:Date; b=RWXbRiWhbTsLQCvPMWhyvhxfJUvFEF3QJq+0L8fUPodFkaWt87e1SzLU/Bb8YQNKPrEUNtsCHDNEpNRvnQ5FCSmqq0I1xEACKL4v9qS4JQfmIt+TXjZXegeNf7AL+1r8J9CRq8LqNFyZILjxUBR6iHhOph5fkNwpsshlCKIEWS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j478f8+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j478f8+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9AC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772917493;
	bh=IZpeoktKlbD1bvzF/mdNGjp/tAINdWYwCKEPYWHK6nU=;
	h=To:Subject:From:Date:From;
	b=j478f8+yB20GciVGoulaiJQ58CiGaqP1Cm0CBrO8KldJhbVzBDw5gsF54prCsrdMv
	 XI93DnK9zj4Vi09m3JC1kZUl2L4XkUIm1j+IZD0ilRyLpqv3CKELA0f4qNGUqrlIkf
	 F/P0PRGgHk8o3djiOzHvbuQZUbAcFnMixtmlsrikG8orirEnpCi/TlhB+hAzFKLskJ
	 zY87XSApx9sWYGNMFkdZNBI62Ub73YY9s5EXST10d5BwAzSaLtNsoCv/Qdv2VCimCI
	 yUYmJ8YHFOxMKkt1RDFIvZPS7l8EDXuJtU10Csw73ZIwfNlCVDiwuesJXBPaRpLZy2
	 g9QdE6VvkN4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137FF55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291749358.13054.17316110984604503368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7306c1d18efc1a74ba0c4357e22ada058062776ce851e9749158c39b0d4ea400
Date: Sat, 07 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772917493
