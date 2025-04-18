Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C163521517E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744999793; cv=none; b=sCL0Q3Krx51O8m1r3j65Hhr/R0JywhfTFhgu8Uvu5vL2uQVxiwHuohI3IZeJnLxBnNK/tkFLAP+OpRjMf1FY3vU1urHeyHE1Kfdspo9Hg0BmE10bO73lXLC0Z/2zXbBOKmhgTLuyZE/6HZsBq7aglJR0H40IUSjbVFpsb70XFGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744999793; c=relaxed/simple;
	bh=iuAgnmQ2wKO9TMeD3dJnbE77EfmWTLa+fwmjb/rOsoU=;
	h=To:Subject:From:Message-Id:Date; b=tcEiQMkkZtMUhdQBD91+snF6a3XCodqgtZS8tuoGwKPo+GnC4Biy/JGUZlyf5Fo2nQ2rmxR/GfN9LwNMThyt9mJ6dS9PGP2u6PP/XQ9bMIebBLf6C1TrNt14/pUDp4BQQh6iRzUAD5hJdogfYkAxQ/YWZQXK5ajOmOtRR8bUrCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5g9q94E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5g9q94E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED3EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744999793;
	bh=iuAgnmQ2wKO9TMeD3dJnbE77EfmWTLa+fwmjb/rOsoU=;
	h=To:Subject:From:Date:From;
	b=A5g9q94EnA+EecWmkxCO+eLeliRQD2TeYIMJFhgTJcD22LdOaPDnoiZYyqM+ue9An
	 hJf8lWh7MoUJEByY6m1WZi2d/6BIcseX5iVbLefcXNgVlxqu4g3yfCrKnh0oGIpHnb
	 2dSX+SVqa68prqv8cpJ6gnzO5qkqCekVa+uWX/bK9wd9322HgJ6fEHHOiS1XQyzgP5
	 oNWbaIux2Pr35SQmjXjDJuyRwtNPxo293ZxCaHsuS+Yk6LGMh87xP7+OUzhaV8UQmM
	 uab1mfCO+N+KAf4r4p89Jyx5vqX3GLNQTpqYFm7ly2/tTLigwB++tiYKX7M9t6oIKS
	 bNxrn8tDhcsIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9001FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499979358.16859.8415422040144835946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578fc604d3d645e9bc33a54196f75aa5e9a151cd93fd20ed03e06093e47321b4
Date: Fri, 18 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744999793
