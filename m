Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3032905
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 03:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715052143; cv=none; b=Ft6bSKpjfZYeUIxVBpaUSaLRVPXjjz7i18D6pkBrrlipMQtHtC7b6cSgf4bSdSBgtSY4F69CWzCQqjdua9XAizostK6PyZZqQIrwKWLioUcFg1qQD8/nfylmLVZSdVwdFJiYaQOkdeZGVDnErIZ4ufcAkeBDEIy/jHb0avJ6A5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715052143; c=relaxed/simple;
	bh=d3nA44u7eV84l53hF/OZ8wQgfHHTi+x2kqqYOfeQOnE=;
	h=To:Subject:From:Message-Id:Date; b=ZRm9vYZX1lg8+0kiGVjSAjyz4zYqJ5Ld9Skn5eC0zxo59NfyhVpFZOlOJG1PUycFjqJMKK2608f6SIPI3mRa0rliyhLCSM3vIKyV6aF2dmTD1+WiZmtIneEZH66x6OHnSRi1I6+itNxtpQmlZZRwR0KzVucaTCDNlgSJ4eUzYRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSLIvDXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSLIvDXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20F2C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 03:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715052142;
	bh=d3nA44u7eV84l53hF/OZ8wQgfHHTi+x2kqqYOfeQOnE=;
	h=To:Subject:From:Date:From;
	b=uSLIvDXl6KNq4q6XNcI1s7PfVyw1TJKELbPvm3Opa/+POiq7kTbJ8Tm+6i6DEAmmH
	 S5/iidmmsbWa9n5lu2rPrBJbUTmSCXwhcpx6A8DNcYv4Q3q63F2gaqmm6SRDmLpBqf
	 ujsuKjnEzQ4OaxdiZXjZ8JOHIAQe3F4Xv/S1ALDVH6Cb8gMzFqUb0JjbQossG3L9ZG
	 hULg10Mt+m9CxzL4UwsGne5+hlV7ChlV//s4S0xS92hOWUlIYVw8w5gvZeoMout4/F
	 2MV6Q2ee9j0TfjNUp6bycE3+2iYGjh4ksgdiQWmIqw1T+0gAuaFqm9rb3QQ8on2hAK
	 F4XXOUqKbwrrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5B4C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 03:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171505214276.25950.18406284202685763676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896fa09752fadcaac50b92592d780ea328e4007d9e22aecac455b964c132a877
Date: Tue, 07 May 2024 03:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715052142
