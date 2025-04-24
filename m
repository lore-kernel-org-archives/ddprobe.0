Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488672701C3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745458794; cv=none; b=l8m4uuxZtZTw+hwK0DgKGFVsoQ0bGqXnSUKVmWy4MHoDJxcBFIS0OztKuq+LVErArJDXgYIGi/m+YPW1+Wjj9729BjzlnZb3FQYLZt5N9UYoAj2Ht7nNsQMT0QU3PI2VtqWGaP70IwuyoNJNAOjZvJwQfVZxe5WXm2+RJv0alrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745458794; c=relaxed/simple;
	bh=wS+3Y/qREqZkmZvwjhTr1fPVOe5acZ6moKujJfYQrd4=;
	h=To:Subject:From:Message-Id:Date; b=bC+2UdErad4ocVS9HJVXm9f+P5EBgXAHD7QHqXy/54ls9oasJTUA96EZ3KNKZwP5foWverjOzi1MJS0YqG6dIbqpZkW0R1a6WY2Hfpt2U2DYq2XcDmCKuTozUlMJuqmYaaHSxEpSm+Y83TAmvL546qVuw7yFto2/VnX5YgW87Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrVk5tKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrVk5tKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7E4C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745458793;
	bh=wS+3Y/qREqZkmZvwjhTr1fPVOe5acZ6moKujJfYQrd4=;
	h=To:Subject:From:Date:From;
	b=lrVk5tKLrxYgXQu1C++uZS8ODZzKzlhIONdxJw3+knSdr0BctFhwkpEcUWnIuo9ZZ
	 7EstHkRNSY/4yjnhbAaoTZ//h28SEol4Ck79O0sFYgVXU2/tDXSYUJvODiCTFmOp1+
	 oSmwhDjUY501TC7R2DOZmwW/xINdGDBxmQozCenaszPym5X+fIH7cTMjCkw1K2Xr3u
	 43tT0BT0PkDWR8Zxqbrppb1ALp9q0Z5kGZEwFkEvCc2bk51suA/z2B1SrfyOBndfVn
	 Jetph1LYjaHB0HEgr2t9KCYybFXd9L6WGT7UhuvLTbAo2Z45oYeGQWDX3Phnsy/hgJ
	 QvDutrdcnXg0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF1FC369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545879357.26576.5092712180881633587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc926f10755039c81cbc26c70e905793b6bfd5c2a6d727d05e488f250bc78329
Date: Thu, 24 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745458793
