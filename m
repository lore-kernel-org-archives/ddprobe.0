Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684D3190053
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580183; cv=none; b=W8zDw0zirtDxvtpA6JwG1QaNnE5aBTlsWLaZMVwwKkoCQv6E2jIN5OTZksh8rEuqq16MB7heT4BCE01C0IuiiYfYp5UUUpfy+xoxj3VJdPZfD2M5CGOVIg8BJ1JyDEdj6V2qDDKhOwO/BJv6r0sAuqXGsXOQ3IEsGsbTHwUm2cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580183; c=relaxed/simple;
	bh=DH0YEh8gOJFs8cTux37ZaRl3o5hOegjWzbln4Sl1MEM=;
	h=To:Subject:From:Message-Id:Date; b=XrB4xUKIsrqCLha91Tfjun1/uZE2De0gR+1cCop9gGrpIxeQBLvPXCinQW6IQoirMH94pS1YDL82QgdY1l1Rfro2D3TF63LvuCrG5FCDGNgJpq/G8CREHp37PW6FW6b6yeFke5C9DuvUzIPkASYGP279M9z93Fva1RJL/VWoXO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgZNjWUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgZNjWUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33A8C32786
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717580182;
	bh=DH0YEh8gOJFs8cTux37ZaRl3o5hOegjWzbln4Sl1MEM=;
	h=To:Subject:From:Date:From;
	b=rgZNjWUf0jJU5JH7ZzzmS0GbFUlcN/KFoFrslliRw4l4VxpjpEzFwv/szjWj+tp3a
	 /EHva/hePzqyt62GKz0Ogbvs4DxqrIEgGJTC4XyvFSu5FGSccHItmpcxeGPLUVQZ70
	 XtL99b0SzXopAv5Sjv1dwUjqpUY3V0DwXz8Dv1p1ocs8y7Kn1bYvFo3EbDDLuH2vUN
	 K/e7dOSpg/lsxzn3mV5JJFERyoHk5LqMJcOXJBQDA7YsZUwqd8p91wKDT8nE8g8oxK
	 QTrsUG0BrerANZXx4lAV99YbTwGJWCqk8kKcY47RJU3Zro/+G+/ImdypNGRzH6XZiA
	 WBb9UZGTbunTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FD4C27C53
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758018279.5626.4767927887448146053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959464b2ed4c98be298660cd3c50733296ac8d1a7fea55dad18ce227241447ec
Date: Wed, 05 Jun 2024 09:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717580182
