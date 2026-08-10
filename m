Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD8F21CC5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786368634; cv=none; b=A64XOjBkky3/kbpmVmh/DKyFPEeqHeNCRXFVPFQs5yJNl2vdh7vfw4w/BPDG+FRvqq8sRqJoTtvW7I/M4qHHx+3aTJqHsjC2lYywXadD3pmgFqzYZWk1cYpZGocgF6OC+Ma7zyQNzGzrBoRvNJXyMSH3hfioQgsgKMVTvczsorc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786368634; c=relaxed/simple;
	bh=O5RHoQdh8fIBd8HaDfS3XvlvyiKAqajCv6IZ+9g4iLA=;
	h=To:Subject:From:Message-Id:Date; b=hrqnVc8sxu7/Rs0weO6y8gBLh+IpK8td7QhTc+bdthBUaCB59ShHAIBP3KdfkxO99UVPKzCHafzE4utsTEsneanqlnF6+0vw0OsCp0HrpxL7A7ibgOTXIuGaUNnakaMz9M1Y6Ad0rh3cu2rMpS9Js0qOdv+WEf741hjsy9chaCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDEOci7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDEOci7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3984C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786368633;
	bh=O5RHoQdh8fIBd8HaDfS3XvlvyiKAqajCv6IZ+9g4iLA=;
	h=To:Subject:From:Date:From;
	b=WDEOci7LiUbXkIIS9rfz7Ck3jSFN2J50HziCGE/+66xECpum1GIV+mwHiLv+JfkcP
	 v/EGA/9uTeKUnMEJ2FVeNKThNPXXbXokCyfUo+SpYEJd5WYvUetAgh9LFcZMz2edQT
	 SfG8burrJ1BCbCo34r6ZfQXFjnfBsZGUpOIAV9hag1dbPPoM9/2wVT7njCWMQ7OzN6
	 BEawI/Ah9oZJY5Dh8aqzmyVFo0eclXBwIb20pzsbYdPgMPlYKXzz5UwrGJncIyDXIm
	 7uh7WFU3pCFTQIj9nsjNc9G0ON9T4FUxGloaRwHRhOrN9UiYNqsPvAsh8oBumEdUDP
	 +dVKHArZwxgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1816C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636863369.6963.10300201697174359344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a83574b27b6b0ed5b49df0dae4731dffa1bcefa4d0627c2ee9a9e255115e2a2
Date: Mon, 10 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786368633
