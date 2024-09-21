Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7E18EA2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726898754; cv=none; b=Zzr1PnZqujMdWoggw3gstjbsHUzWPYsQM/IpElS51q1I6OZBi532xoGS/P68RR9EXGCZZMTNBH3vJ9l1cuKeOpy0Ns4oKLAqQ80OmfuP3ndcIt4JEhJmXwN58RgQYlwYBC27HPbArc2u2bWLPnqmXmzpwKe2ywJtjoqcZZnGxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726898754; c=relaxed/simple;
	bh=ZlU+tuV7JVVGqaZ5p8IpQThzucSidfKfg5/ZFQMxyE8=;
	h=To:Subject:From:Message-Id:Date; b=kqjQic4j5lkDvTiaRM8MkgOjr06Urs8W3PyGBLR04l4TRqqNlMKa/hTHIulRLXe31S7r6v1qScuPiiosD/ZlrdXJkMTi56SlPcn0282uaJ5ToCIk90lTvtos2bIr62A5UwrpjDaKKKaadI9SfreqAFFIIoYdLuE2GXY52mb0pno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaIrenD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaIrenD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726898753;
	bh=ZlU+tuV7JVVGqaZ5p8IpQThzucSidfKfg5/ZFQMxyE8=;
	h=To:Subject:From:Date:From;
	b=TaIrenD/HnS53w2RDr5Qq65suy5wA8Ai+XD0h9OGqXDjnDj8HNpLp4EJKvoWuGqp6
	 n7hbJHK38Vz/WmNIyAPmGyXmuybJgsBC/SgVt8hVyFdAm/NIE4QQjCw8L5IkdzF47R
	 5bWyjZyfkpeWgoAW9lxPbqT/x6XEkM4R59NmsKRAVS5hgr99hwrOD1js+DcvM24xzk
	 5u6YA1jM1s9yhuMc7F/fWX6ade/OGugvJHTeg5BMu9S7IhjPVk+5MkBSlsKK1FMExg
	 NCwRO9WlHJ+lRFeGUwL1O/QWvBgcX/v+L1h4OjUqaZiNsv4CLzO1R3vzWao1H6qy15
	 hpZiahHX7flTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4582CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689875363.2268.16687258320562668110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4fc734409a3440ae9450e006a8cae9ddbf7773b90a199249a7aa61742f59d6
Date: Sat, 21 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726898753
