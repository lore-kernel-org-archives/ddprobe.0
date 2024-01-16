Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D861BDC2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB+fBHmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83893C43390
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705411096;
	bh=Qf6te/KIKo4VHE72mU3OuLcoaMaBTwetilYJWySoZLk=;
	h=To:Subject:From:Date:From;
	b=pB+fBHmNEYCy0Kx1Fnq1TwZJZqtncghmn/1neGsXF8mYuvxJS6kzXZV+m4arnLM39
	 MVPAH/PtVtDJonECGzhkIPGkJFLhyHM/fys6huy09lBHevyrdmcvMnWkuS03KdXQT8
	 5XgUY2ZX9XToNEFZsM1dmmdKFeubOvp6h5xuAJWAPvNJsCqTeJ1/f7Zu8B4TOsAszH
	 k9TL4itR7D0LyChc8SY/TFQjWoQpZeUDWEAUtZhUu9bHS17G38AI2VPTpZTWJCO7rL
	 IK0ztSLDfM427bcjv4cc3QliOq422lEirDyzl1LHRkuqCT8nVM1l7nI7dVkBhxZ9Vq
	 +qwKLpq9Xy4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6748CC4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170541109641.22538.3107093544418280369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6a55483fb7cfe9bfa0036e57484e5e616d7ce6feaf7c2b09f514c932d07f52
Date: Tue, 16 Jan 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705411096
