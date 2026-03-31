Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69CC299929
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774929894; cv=none; b=eViSQ1xOoZbG29IN43OFksqDCMWR/QU5HqnPZKiQ8IwB25QDWsDwwiOEyZ/ulY7aJk0lJsynO9gWazRJThCrO5szq4NCaR0S9fNs4GDKmSCnPzRgOk1i/bKplgb9fgRDijKfW1w13P5JizCDOh4Hs5i3KpRNPjIuybLhcZPjPDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774929894; c=relaxed/simple;
	bh=4obuLI3rgVAJS8Kj+kE/UfdTZWqgi0RAM8z3QCSyHw8=;
	h=To:Subject:From:Message-Id:Date; b=sP6QQWYWBSvz5R1h2YNUjeuMaCrDpC5iYhpv7Gf353/GYAh7h7ytfav+xYBKuZenSDndzdwpTKnSMnRDbtFFEEL0ByHSuCi22dDYQFj7GNo75su7BVVdPqUV9F0bxz6Bhp+24ZNSQBKaBapADuUt5KZ/MHjkCCIN0UgilSJwTNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4La4c0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4La4c0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEE7C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774929893;
	bh=4obuLI3rgVAJS8Kj+kE/UfdTZWqgi0RAM8z3QCSyHw8=;
	h=To:Subject:From:Date:From;
	b=q4La4c0ynQ8lScO9+vJn2cC9uuRFj5cfNH0cJ+qPpQz4qdqXHIz1CkLjLOoJLDMoe
	 vvtB8gek6DWPCJ0QdQGfy+uJwd+e0sq5EWXKYx6y/UJ34dXXnPAj5Pwk+KQ/oz+D8l
	 2riK+uaK2/2055++AyXrRF71/rSZxakCDCVsyoEBWCNMwvTw76yZd84VOA9mefyKdW
	 w1NsH5kJJ+B4LnMDfCT8EJJwZR6siYExpG4fUnFu079tq/AP4OJiljxZwUOMMR3GCY
	 7RNkOPj+z1uoif5itBEWoOaIXL/diHMj838eZDKaZ5cf7uc2Fvj6eagTD2a8LQnDl2
	 xJdX5Mtj482Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AEFF60C1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492989358.17037.806392973860578864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762fa36bb79d42ca7299e96786603158f35cb1fe5fc8c69f97985904d40d194c
Date: Tue, 31 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774929893
