Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2F41A9F9B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779166234; cv=none; b=D/9RffEiC1iR2tir5qg68Fk4R8e52/Jari4pUJ8jRUUGfGI0Ny/G7tw96muVGEv3DsO+b57tGcPshwcjmzrH2mX1Jql3IZfInh8PTEPZthPzyyEv6tCyrUhjyhcO6qyyCiGutMrIBvcB/l7q79LbE6sI8zoLAXdmWhbqo0teolI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779166234; c=relaxed/simple;
	bh=wGMORjher9tho+5kD8trOvownXtriVwUsQ6MkKFssHs=;
	h=To:Subject:From:Message-Id:Date; b=DyC1FaIANz7f5F8A9gZPNGcjpdiiNI/cqWe0O4zdA9EWiO9MhVBLU6+2wjTVQurAJlaUul98FuotES9ctU8pDtdO+nC0qkoz0kVSPzYBoRBsbz4BptGoB3kgX9X9pXYKwxv/ONETI3G4m/7u3Ts2n68cVPwd35vWANQBLYSp6T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgNmGLUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgNmGLUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0833C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779166233;
	bh=wGMORjher9tho+5kD8trOvownXtriVwUsQ6MkKFssHs=;
	h=To:Subject:From:Date:From;
	b=KgNmGLUoQkCouYw5Zi1hRn33IzohzEKJDeVIvlq6QQ9+WkgKqBmmGWoqJckmHXpNy
	 6WdIB4AyJkZdGZtNQhkH3wF0Ul1QHlmb/uzjMZ+mtgBhFoNzxds1wlRO3VEahs2Fn+
	 0inPzp6M979yuK5a1OlM8cg40L1rUca+GGiA0FerLvyQKL3pfxFIbcYd4PpNlN0EWd
	 lmIqnKHsOLU6uwxQx5nVc6haWLJJ6hs6J9D25XIAfw5jEkGleXJunmfL3s4lWUYbYU
	 ZbuwdqMf7mAj+SrHCpQRoRa2wWuCTyOJxXyt+IgZruwSw04UBbamOYrVDpD9h2Aw86
	 e7DCIwRNRBMMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB2FCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916623369.14230.2948965643600225877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f421bdcb54e447afd23163e206dde4fec004b57d62c1036408f5cb16ccb0aa54
Date: Tue, 19 May 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779166233
