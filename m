Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F523D6CAC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773425094; cv=none; b=fFrS5Ix9wwgv19PFnGCM4KD+8EcgUjHZDatRDM7pO8MWtRmmQSDej3YHn5jJhKR/JoJBrELYJgrbj9S5KWAJ6d279cYG2UkUcOmcJudWfzNdTYHlVnZ/SpFq0Yodhk/Qfmf5Hxq9Jca9Z/jRWD6krC65L9XoaWGdnkmpfmx4Sm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773425094; c=relaxed/simple;
	bh=xaXTpUqNm4gtwN4xygeNZO6NL9PuCNonogqJXay5vJY=;
	h=To:Subject:From:Message-Id:Date; b=SRgetC2SDngat/+GqmVH5sCoX8MSFiOUDZ8RTOgsHIpEvUSIiUp2rJed8L/A29ueknmfK9UfAgFH/Yg+ppjCB24RTVte3fnhqZY5bdYmgtRHD5JyUqp1KvZwurhDu2bTGaT0sF5+e+0ueAQAuFNdaKSmhep0ZLtqkfmp/FaOP9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxf5SsoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxf5SsoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01FEC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773425093;
	bh=xaXTpUqNm4gtwN4xygeNZO6NL9PuCNonogqJXay5vJY=;
	h=To:Subject:From:Date:From;
	b=Hxf5SsoYC5b41d+aGqWCyZ+g3X0yIMf+nf8oO1FloG1SPbfoOjHflOBkJLJUc1spS
	 PkbnZd0utKEJCU/nBC4Kn7Ag41UoGDdJFMXe0z8ma6D2Axk9CVjSJwR4mc/nX2Jt3l
	 bHEeX2gu60QhW9tX3h2Z0Naa4gNmgJyxkGWIBwDkEqeqKiGH07EKM1mm/0gIhKAySy
	 vFy1ghqife9mP+0LUd5M4rnczA8Y480Y1bIRQVX5cw1piv+6K2ELxJKwxyZ43lThLg
	 EFFJbwUrK20UI2A4IcIXjxL8KMh4iZAyo2A6PhnCelTNf0jWhUcBy61r9t+kjPC9E2
	 FFT0znd03atmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192E107BCD3
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177342509358.8732.17631683276809887202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454eb6b2e7d5c5c8a93f72418e0edced17600da482f06748e65e606e064504be
Date: Fri, 13 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773425093
