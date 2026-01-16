Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB652FE575
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768602834; cv=none; b=pXApqxB0DCa4aOC8HfyDAeaXozgqdj+8uf9xUQqSFbgZl17AYpaAe3KDY2WfrBuOQxD+eOK9a2SIJa/x4ZvyKF0rHX40qgocr3ZVeT3G80B4cN2nNS75nj+1zlo0BTvJsrqwdk4m3RDuSq6EPv0jkQJbICNQP64H6PyrveGZhXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768602834; c=relaxed/simple;
	bh=JyGZp3nvVsdlofqVgQ4dITpEYEGH1AQJ3dcqvsgfWBw=;
	h=To:Subject:From:Message-Id:Date; b=f6pD7O7AHJaLNLppEhHTLGhMVb6/LUm6Sxn+BI2CWDQ7L5ETCgbXFoMsA1twHX2KbfhpZ8nDq9iyvdpdLw9L0V6TqqGgFGEblOj90Q5ScmtfP/AxE3n5UKIATqFgnuT2fU2AQNwiRmAkDUCEKrBOguVwA7yWHs7JFv/iLj53u0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAuD90TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAuD90TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B61C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768602833;
	bh=JyGZp3nvVsdlofqVgQ4dITpEYEGH1AQJ3dcqvsgfWBw=;
	h=To:Subject:From:Date:From;
	b=pAuD90TAWIKJ2wCW6rQMC++cTm2t7mcx768ZHAZhnKZjC9p287N+17w2I7lBHzBtz
	 mSolryL35enkk46nLQTNv6Gd8TsQTodWRhe2FofSUiwA4wUPe9oliOVCPgrYjn6+h7
	 yTEZtHpUKMboHziXjzdZlsGy283TG9lKYM/YC3D7r9Ba9z9znuKegTbRSMmuArKX3n
	 CIaTL0fuz7EOLbX9ahPH6XVGUl50M196+86VIPNSxx3WYwNf3j+siZjIW06pnhnX9i
	 yp3rGX1w8My/oVfDQKemoC9kQCM0dlQ1R9+T1YDjJlfgYnbbDYlmryYq+KYn36U+Tk
	 8HGbGYh7QXbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA48C98302
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860283358.23967.9635409353910737510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87505b20bd233c336b9805d3b325943fc5cd1436c5715137984a51de6c639eaa
Date: Fri, 16 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768602833
