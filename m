Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BE23B7B8E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773126894; cv=none; b=fKzSesDsbXRI9KybbDxIzSTEu5zSyqJPhnMuwOOLT9qaw1EKAsMxE4SyoNv3dUrKg5ULwQceJvABJwIb98Kp+ixEBYG6lBJfpCifYJb+MwNFsar4tJYMy9TRlkn6N+fxvOrKDTanigwRekn/5/JGI/PkqHezxhyT1fTWBW+K/34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773126894; c=relaxed/simple;
	bh=kJzDMuevi7j8/DZ4Fxkc4oPHGP3U+AHB2EH0zt03zrs=;
	h=To:Subject:From:Message-Id:Date; b=TqyOV2bERtD+i1Ea+a6zzNl1xXE/P6zSrZyyt3YQ+rlUWR7iCpg/lhOTObJwhGbh4lT1gxX+LUGK+mjPHYI1eE4nQcsxiXZUYX1U8zkXucuLUM3304klpwJCU0TeJPgdq1eGrgrQuBPlnmhpuz6Mn/l+Cqh8g71iY7H1Mewt4ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+dUVjNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+dUVjNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B124C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773126893;
	bh=kJzDMuevi7j8/DZ4Fxkc4oPHGP3U+AHB2EH0zt03zrs=;
	h=To:Subject:From:Date:From;
	b=O+dUVjNAomAbVyE3VCDkufui62zKfYVXHljzOEd4GWCvX28GelN2Y9fR2EhvZKIJs
	 5vBBeDpdhf2EosGbzRygWZ+GYlXEh9YWNCYivSDKt/cwek6ONTp260ZBv2bxlBPj9D
	 M+m8StBrJOdXgBsEMv54e8BJUhe7JZ19oFt+0Qywdk0yymZquTEuRSB6BTGKfzKkN/
	 q7Q1pAm3PgXzg6TW9dMUmxW8xg8W4BKCoIHwkqdZyZRC1CTQUmUSMg8YwyKRyjuqOC
	 M3ltbTZu7x9JiDwpv5CjpA7ns0ILWHxTCZWXtRvWJzDp8SMiY9vmyFoY2jVXveknng
	 PgY0dZXgsAlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13BFCC9D3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312689357.6142.1786843828270023330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890807c216d30c2b3248595fc85ce06d9c901d90189745a2f71328b235605d2a
Date: Tue, 10 Mar 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773126893
