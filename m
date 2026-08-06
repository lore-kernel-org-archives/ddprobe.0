Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4D13B895E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786027234; cv=none; b=Db4ba1act9yoOYQJG5gnnRBuzkhgIvFvVnILaTdxZCX5MR4kjwh7HlHb+Uhovn2nUpLVbyTIvQImKCgZYr9d0VFM801kH8x2mne3VYjNyGNGeUSx8l/iXXexqQS5vQSK45c3+Iua2fFLyrrEFzt583+c+Ym9MyhfnmJpCMJ7GDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786027234; c=relaxed/simple;
	bh=XHrHatujZfzDRpRII3kJfNEC1bcyGiqYQl1SWhr2+cw=;
	h=To:Subject:From:Message-Id:Date; b=cTLN7ZH0qYc0eRgJQReIfxH3xbDka4HTcJVM5LjxLLNQHnBGm/Y7XzhzV5Hlijj2f151XJQDglRhGnYg0JRFUAOEjQ7s+VG2Rmsl3A8SbT0FlIdP9OtzuNpb8oVVXDTJjEzQAFjAGeLB3wkXIlkK6D948qeH3xK8o2GD+/mCARE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ4wR5/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZ4wR5/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2BFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786027234;
	bh=XHrHatujZfzDRpRII3kJfNEC1bcyGiqYQl1SWhr2+cw=;
	h=To:Subject:From:Date:From;
	b=SZ4wR5/OdAQ435SEMJponD9wolVcBsHXwSOJ851q+1/sL4j6WDqHdOiBewR9jcWoJ
	 KPsBgqBccF4tRbSehrVgsYA4D3AOl4x2FLnWx/fn3nP5eh3iFl76WMUIXxUIjmC5oq
	 +3td0XVFH/1iL9JBgTDKOjHDNT9jlE3oE5KufuEaYwKHTHAzC6YTotMNSy1/5o4V8s
	 M6OBmsbLe07nq+1nRcqe7uyDzQXw5VZWu4YD1ssZuJTJJwpWwPbGRc1ve9dF9JPkbZ
	 nBU1V8ppSRFS8g3n5B8Fqj85pClFxiARdjOwf2wgtszOjMIVi6SAyXqUs5sTEU1UrX
	 KLYNxL5nvjv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF141C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602723369.29904.183888217125294740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e6715886b32e7f71808a1cc07dc023a70799457fdecaa67c53df530b42fcc5
Date: Thu, 06 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786027233
