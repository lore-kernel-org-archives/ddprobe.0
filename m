Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D571FECBA
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765437775; cv=none; b=gP6BC2/97wOjka9/j42EQDwKhcL0u+NANRn/9Ww7c3RuGlJmLjIA+Ho3A/Jb6EaI47hEWeVlMZBnLvKZu4WHJ78v1l/Muvk+xjgMQ2H3eV90zYzr9EM7WE/TLN+gmMMNu5nvDCust6wZ+0oarbsIlHe5luz4ojY2sVzltXUmMJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765437775; c=relaxed/simple;
	bh=qLAFW/5juSOA6BNWekLxLkYdpG/KmxE+KRr/AoaDQ4I=;
	h=To:Subject:From:Message-Id:Date; b=uXDK2ftm5rNWSNvl2V/7CZgDaC/gUL/ME2wsJz2MvagfqDEqd7NMsfzCOFz7mVnajp+0XVnw6W8l3w3fpqoFMsraUjzWzwzNgsVDQ2emboKMFZj5PVRlYq0yEFHMTrIEX8xPh8xTcfHNBbyzRd8126J3AYsRtMn4eeXDTX+RPLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbwSvGOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbwSvGOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C9BC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765437773;
	bh=qLAFW/5juSOA6BNWekLxLkYdpG/KmxE+KRr/AoaDQ4I=;
	h=To:Subject:From:Date:From;
	b=KbwSvGOpLZHSWwxYSVYjmhzKgVjP+V00nkW8Gkx1pYQKDKP+qAt2C152OEDHo2o9n
	 5oDeqDbWlo7N2RLXH5nYikN1N+V3zaqkF/ukIPF3t0tueqKcwPM3JPwMgSeAAUaiLR
	 jGm/g/vJv6OfRi3Z0ug6GkXOU9WadVoyHOU3u5Y5+sko1xNUksg8a//hTuEkyfsg5g
	 BFdFSDzmRf9vAspQ2qTyxkSsKZIkWS5mzD36NMgihjUDWCxUtT6iBXvGKN1X1YzkjN
	 aX7Ec5YhQP5Tc2d9cLDOBztJl2l5oqInvqX3aifln7ElDFx8TCk10v5Wy9UDBWTOlm
	 FKV0qnDakpA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA76D3E79A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543777363.24537.5207468520918759994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1771917f10b46cf4b08035afba8de16a28bd332e964a0f1a769fd6d2767252
Date: Thu, 11 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765437773
