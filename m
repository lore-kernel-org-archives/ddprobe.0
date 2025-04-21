Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4EC1E5209
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745278794; cv=none; b=aS5S2JHZ8Swkptx5cLiwU5jUQBgSD250ty6n34Sy63gzqxOp26RmWJ2+hh1insjSRBbOQPIqLzyZh8pem4sk12s6S7r3UvAQKKMDjdlk809uslk2bL98b3pCpX1XjNTDiyfPDwfKAcxIBn0yXy8hChV4cD2ZQIf3TG5vVUcWz68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745278794; c=relaxed/simple;
	bh=gu+O78Qj6r1YU8j33PNT3oWlIMzSUwWjKpD+TaBd8Uc=;
	h=To:Subject:From:Message-Id:Date; b=iZwWK9w/h2ygNA0LrFFAKznFFKeCEksfblJN/neXAcJ6LVJOk/ywbZRnYoNdXLN51hjVf7epcgitUm7dSllhvcaQuomlaHJoLHJfoPA5zX8Q8ANS40r88ELTjNC4RyeLEIaO6VEqDcuZyzzUrHZJhMvl7nI9sYr6IsTDB6pGx5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re6wxMSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re6wxMSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF94DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745278793;
	bh=gu+O78Qj6r1YU8j33PNT3oWlIMzSUwWjKpD+TaBd8Uc=;
	h=To:Subject:From:Date:From;
	b=Re6wxMShxSYp0/dm09n5pybN4u6iBWMc6jjgCAsbVuvUUehKFwz9unpmRsYWlxjFq
	 cOg+d1GFhT3vgkFXeiq7lEIIRp3hJZ8khE/uJGi4D8jsWJT9wg1A+xqUlt3W0cc89s
	 PV+SJ79iWxpOfcl8rAj39EK4uYoD7FfjEo1encI66zwmzxD2eI4/wdwbSMvArP81iv
	 hBnSXUOKCLA4voN4pJGibJYqR+FDdvQeymYsG6nH5gCMGZcX3rvVwo34/yUAOkKoLR
	 KRO9Dey3ZebBO58gQJgXRD4JyORjppYU95nM6uF5Y0oSgroRCz1rMKEK9S2Lr+66R8
	 pVpnHVT721CFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98485C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527879361.3791.5004395913829085142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c19d30c4a6b4b027b506c35b981ea739cf0019c2424f3c346b6eeea2a522d36
Date: Mon, 21 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745278793
