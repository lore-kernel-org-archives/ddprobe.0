Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC851548C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762950594; cv=none; b=CsqbVulQP7NKbvx5jATOnj++ejpP6Z2G8TjhX+HeGhXktti4wbV+cFmHPfkYYAjiz/O3n8Mw3e1/ys2j74PNfvlAcEHETuuW9DEUzHhPHV6ESKc+PIsggJC9A7t9mzHekLbf+BDm3PYH+kaxrok9hWLdj4nVHpLQkOi/0y22rUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762950594; c=relaxed/simple;
	bh=LOy3eYYPQ0+UQ/UjaH9K4WeGAw4axI3tYALrybkB5ak=;
	h=To:Subject:From:Message-Id:Date; b=k/M1ZAB0lrvxCMa2Og/GY2FHDm5tVPAyoX2ZlRKx9avPveLod75gvNUg3vrSOU7gH8RLH6l76i8HXON/BQjPDMoSAN4SIU0+z7MyvybYdLRWlzhRthCafLaPKlM34U4bQWEZ5u0F8uGcYdS0nvMluhBPbqnPU3pcZ3LnRdHxMjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAi2Jvmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAi2Jvmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCA3C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762950593;
	bh=LOy3eYYPQ0+UQ/UjaH9K4WeGAw4axI3tYALrybkB5ak=;
	h=To:Subject:From:Date:From;
	b=vAi2JvmzSrSNzYXsZuY0hjh1YD472tlEP92hfdf9n6/zJ4iswvdkf8AifvqRsYgcj
	 dblEXNVQyhwp0w82fwvTZTUN0JA2JK2Q4GJihAX5OaGxZvDmk/0lexfAXj6y79vLWs
	 DMsXoDyZkfWAWBJn2oxGSHBXXDsOy3yds6NaSsPTAxTWdxArJtrbIagkheNarUdzc8
	 4aXOU8DU8aTgXa+gPEL3CEeAQpxoNn+JuyP5W0kNbtd8IEZsGx4lEUIkARGBUp/J1U
	 AUvkQT0niB6QCSXjn2vwroYlBwwq9wvs34Hi8gitaU7vOzTJ6NCS8WlwHv0TByNaFb
	 Q/yxudQwYVZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90971CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295059358.24750.4223024790446565099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e285ecd818b08527063db10edcfd585f25fcb40963bca89b770ef1c75306e86
Date: Wed, 12 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762950593
