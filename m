Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20040298CC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773728094; cv=none; b=Q+TFOgtpkvfVzHiVaawdQetOBUsek3F37kJ7C8liTcLaF60m1RDA2kMKSNKplUeDGgXLntlXPNTGSrBV2DZNG8d5wtd/AG7HN0pn63KIU4qHh0LhL49Aw+8+Vh7l6Do83SWQWuZ97dgRVdk9BuQ/4v7Zmwn78L/FljPw4JYZu7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773728094; c=relaxed/simple;
	bh=2nJNqA8gSGrAiZNL6AlY9fzg7EGID0LEF9d9AgNqjSA=;
	h=To:Subject:From:Message-Id:Date; b=MIq6kRloLK10p/KaxmZN2HzNa6P4043HSscHJqTsWTbhjBOgQTghpGTt7FpzdwU23TE1WI42dn6KXRJTe7fZIb82sn3pbYO+wWc3vjqiP9H9R13DamqUWH2neAPpN9TJRpyj7g3bmjPvfEHWZDBr6fTgc99NCDNa0alC2elHJlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIm1vwWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIm1vwWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8703C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773728093;
	bh=2nJNqA8gSGrAiZNL6AlY9fzg7EGID0LEF9d9AgNqjSA=;
	h=To:Subject:From:Date:From;
	b=QIm1vwWOkwKbREB3AGryRwvMD8tjej/zoWvvxh48KcL+16a/0kZEWmyl6fnZZKUYI
	 kMONfNWN+9gRsbwbize4+j8XVXteGFU8CwF4m1n+4e+k7RA1C1A6G+bWpXJQGsAXXi
	 1sjnPPo+F/G5ju3F8VEoOdTbZTNc8BLtUv3nlo69pV3EOq/ZZEGOiiwxJNMrdmqkUx
	 Mg+wwWJyEyIjziQh8zjFem3O45g+Pa9mz9tf3xA0CdHu4HnkxgQc66ukcfc0LmnbKq
	 XARJQ/2nhIE1Vg+IAm8VYM2y9gofuuYMqADQnjUWe2fhBDcyFsVSCVqeA69ccKXf5R
	 SQ0V6Ne6TroBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220DF506CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372809357.6541.13463483888108585798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909649de3e9a2b0cb6947ba5ee67b53ddb6c38f756bc6d33048066942938e247
Date: Tue, 17 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773728093
