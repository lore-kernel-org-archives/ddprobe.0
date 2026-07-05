Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557773803DD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783262914; cv=none; b=EZHM9w3l48plUy+UE8bB4l+dIuODVUZJ2PV8wc1mOhcpEQG32dSh/TNx9+faMvma8QCHWjB9lEC2+0lkMjrDGY8UfafXoUgjbnDQzJxdl7wL+X4Qwk5kK6zY4fjKhH/vcZjoVLHdiOz7Y+kA9B3DA4nGzixTmhMMO05deMG2CGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783262914; c=relaxed/simple;
	bh=5Jk6B2RFpl6eGU4jgcm5sqsEt+YWAyS1zzNVhA2JQq4=;
	h=To:Subject:From:Message-Id:Date; b=iP8kZXEsbPOdfVhf8kB0xdieukgESp1uxqoqXAt6oXg/RI7jRGpWbgxVEqHv/xHApHf14Q/rfXDmhbmHpYFAqtNXDyw3FC/tehXWyf5f0ljh9qWFkhrMzyVjboMpJLB8qUt2ALjaEsFf1gOScZUd8uNuXyJxFwZAqPi9+MJ5eH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDDovpNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDDovpNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3615C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783262913;
	bh=5Jk6B2RFpl6eGU4jgcm5sqsEt+YWAyS1zzNVhA2JQq4=;
	h=To:Subject:From:Date:From;
	b=NDDovpNJ/75QPCEOCmM2tRVfz+U6do64haR1p5E7uqmniDyLq/zOVErAkTBKDz+Qv
	 cdTVTMZa7Uhyja/rY6bJnzs4hanWBbs4rOGIpXwPFe1jugP0+ZUap5PQugtvEZXjIT
	 4x66RioG2Toas4yyzfRnHnCvKwp4/Blez00PwGl+jMR5ZI/bqtgY0ugftxfVzJ8n75
	 F4umHlh4cOtLk3RT13g2YEuf+l3twD68Rqd22E9KN0nzoasOSu/Jl+uTZjntvESMf1
	 r/j7UZkEW8uruPEO/W2vgAcL8MCx+nXsQlZsAKI8Q+vQs8vIc1p9woCNUNlnww/301
	 9gTNUkX1c1bmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B115FC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326291369.22393.4566351950074179896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384fd0d680d3af319f969f06ab4d17180a421c20dbac8bb74404cb6114063c08
Date: Sun, 05 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783262913
