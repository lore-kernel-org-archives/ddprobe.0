Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F941E0DFE
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743202794; cv=none; b=r+Y/dIHvZaD4K5JOxTSlMd9KNyDwhwZcSxzPIwEiK7qxG/ABeAt/mGjiKhMecjOifxd60QEM5WvIjyIgVbAizr3iRf2DO+dkLJcGn/CtdOitmwTyuC0ukrfU6fMMr0+8edySVxoYg+FegXT+JcvT+2DQZAfaU9M4HT9uPke/5qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743202794; c=relaxed/simple;
	bh=s1ihgeD8n5gkvcLq26VMH5uPLXXOdAK7N2lB7XvyipI=;
	h=To:Subject:From:Message-Id:Date; b=FtQRhxH9/jOv4fFhp0DbQk5ht1CMUuNdd1fl4s21ILTJ692565A5JgFL5LLg80+OXkrqT+i9+sFrmCLsh91MD0S2MScCr8UKjb7OgPu8s+/QZRj+InFaAGmd5exKkHOwGrLCoZnFuQL0xysW9pRSkgFC8OF/8DwU2nn2BAaZSdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lh2Z+Ajn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lh2Z+Ajn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43F3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743202793;
	bh=s1ihgeD8n5gkvcLq26VMH5uPLXXOdAK7N2lB7XvyipI=;
	h=To:Subject:From:Date:From;
	b=lh2Z+Ajn875DU5rUEBrt9sR17YpJkK/a5bUT2v5h38m54cKuiv2JtEWODlfIjnTL9
	 37ZSuEwa5ifl/f09APkwo8jzg6vVPMk4TdRbQ8avUdXmsEf9w5Hbx6QL/oj/tb4+H8
	 1yHJUDBDvHRDXx1eCcpOCu9OpBzywpoxqek9z4/bQae5Mk2zLWujHdWEzBDzMmzMCJ
	 PBcPaCGgvkzX4VroUNze1cTzxfLuwHyiOBG/pBnQI6nkFMcaqKZY8oqsOyF+rd+fVs
	 U7Dv1j7vXEu5p9FJoGB0QtUwRu9dwQSNqyQpMoGZKb5aeU4Gv7fLQfkM5mOP+RdUJX
	 ET2KHK20fIIUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0972C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320279370.15915.2922893511416170071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53a601f8eef128db34aa2faaa4870c696334cb21822331d957b843a658a9b813
Date: Fri, 28 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743202793
