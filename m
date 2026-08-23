Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C681D5CC9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787492434; cv=none; b=knQ8n3jgwg+S38qoF+e/wbnwgkcf1r/W/WJShPsRu2Pb8tDVncM8U3Vsa6wR8O9WSyGdKV3tjj7ZpWgWU9zObqSKOnnFQmF+2/AC2D7WRPLQH30u8IJObZAhhE7N9sE7YvXaWLCYxTjjA7F7+zvtRiXnNjvIeUHJH2VoROZeRzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787492434; c=relaxed/simple;
	bh=kYPKtmMBMo34WmLPauYgYfegPY+d3Sfh/QwspcI3xrM=;
	h=To:Subject:From:Message-Id:Date; b=EOh3bGMdI0eQ3yhPBwMpaBsbytSnkNa1NNqODW0C49UzSf4YtiHNb+zSgT1pGYzR6jjuVvxDNVftZuXDKzm7R0RyzY9HZUpAL0i6SkK1nBfy5b1fze3PPjVIS7MfxOSqrZHCTaB5JDNQ3zQwzjGEGTiAzp2yk6jFBhOETl/ylvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHwKBisP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHwKBisP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C0AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787492433;
	bh=kYPKtmMBMo34WmLPauYgYfegPY+d3Sfh/QwspcI3xrM=;
	h=To:Subject:From:Date:From;
	b=UHwKBisPv9GZ2Nk1NP9+bSutHG5Y/K0W4fKnoq2vAxMj25GrEx6hynEWwNgRdhCIp
	 gU55IzhpMtHkoE25CkcxKhgHFKxuAWNs51OpNSdDYKiYY66Xv82t3DemJmtqWpjVqg
	 HTPmoPI8mMe6RspcpsBy3h54yeaKS6Y32ug7BEcvyiIVusV4TcJU5Zl8DVuL5vUsmn
	 WQsaxmKUVcxR3er5oNERKSPKYUiVy1PJCYMQmEtiYErjbz9e+hojI6QqJcHMJza25E
	 86kC6nSayH97X4zIybClI1K48OP6xe8LZc+52EH68aNoDqZywh/iXXZSNZoVXYNO/V
	 WoiNzDWtITFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB1C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749243368.22081.375604967074503488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e333d999382a297d701e5387f54e826e4470d299882b6849de32bcf4307ae931
Date: Sun, 23 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787492433
