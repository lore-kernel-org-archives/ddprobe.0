Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1338B1CEAB2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766240634; cv=none; b=FPb1IrxR0e0E3IEz1VmyEhNwnvd1DP21U8sceuNmDo/ZSgc1ifbONwv5zIW3hJjfqcLuPdFwM1ijZz0w0Cl03DYHe/bj5APam1k4wJgy2aVRzRoJVNoeY930aFz7WSF5OUqBwXFvdA0e3YN3VtLDdVds3bwcDJ/B8wH0J/Xcu04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766240634; c=relaxed/simple;
	bh=4UwrqzwWz38D/52FXxEPkpkgWZQQolDqZpu7rDm7/T8=;
	h=To:Subject:From:Message-Id:Date; b=ahtyymohq9+lIfxC4ciOIjh15CzAtePRs/9BgddwtLlnYNh5avjiX+1N36qNihSH0Ds9KjF7qzXe5oxVWaqA0rtFGBI9bJB32Pj6au+Pq1Z/98S83AC3lO8c28RT7Z2xa5d9beS4ADJwheTOta6EFt2Zzpud4EMcToEKZMDgznc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTlOe2IF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTlOe2IF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A770FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766240633;
	bh=4UwrqzwWz38D/52FXxEPkpkgWZQQolDqZpu7rDm7/T8=;
	h=To:Subject:From:Date:From;
	b=QTlOe2IFpyisStZNWv4wluf8gWVyBqtYc5DVgLxpl/hSb6v6je0GuMB1GPRVmMqBj
	 FQpPL8KslbJY6F1fSBwCznpp2McFNHKCiQ9jiCjLbDNOm/60g2idKzX9+iXbJuVTaz
	 /4JC6mRPVQLOgNItjutoi32VVRHTi9wXIoaClN4snsp9DDiZogK7C/JZjHKt1ODOdF
	 AafAeGNZXtZRKO8MswQos8BV/5Ut7GxSuh4QlJNEkaPaOc7gGB2iHGO9uUbgWIe8Zw
	 yTK4jR9C/rOjMw1gUXCxhrfz4VWe+7JSA2M1wPMhTllgr6xWwQZ0MLnmUVv0J2AaOu
	 eLQuQSgRf69hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95374E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624063357.3951.16630230852345120411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47a6e82a33246e7cb37293345c083af646503ab6929a56e3b05fdce3ce38741
Date: Sat, 20 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766240633
