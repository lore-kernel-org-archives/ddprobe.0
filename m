Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635FF14BF97
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719908723; cv=none; b=j3jDjh/NSai7u1HLri6FXouNcpvVnE8xnq4fnr9cmYjnSWjo6gjCJJPT1KeeiZ6ypxiviSYZMSejetLD8qY9Ye2IT5mhS6O11/0+CVOhPuTlBz/uIC+4670wk2QLk+y9BzNsbyKO0/zVuAPeUEbkYB4jrnNU0TDMyZitMtPcrQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719908723; c=relaxed/simple;
	bh=H5HdwkICegAhQ3VxuYAb4mzbZsr+2Pyl0K8yQH8M9y8=;
	h=To:Subject:From:Message-Id:Date; b=ggUnG3bdm9rmwKT8n7WP6fbRvACG1SwX2RtifDNvQAqbtMiCYi16GiX+h9p43o7Hg3HRaIxADoCBqN/3e4ln+BuATA/1NBZhxxWOhQLup7dj094+4viQJOhhI7TO+4FSezPV6XiMxNdBVlJTnXC8WCLx7SeIgANuhcAjLvP6Vg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5Y7hPcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5Y7hPcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5B5C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719908723;
	bh=H5HdwkICegAhQ3VxuYAb4mzbZsr+2Pyl0K8yQH8M9y8=;
	h=To:Subject:From:Date:From;
	b=r5Y7hPcrXVze8hCX5d9LjLZBV3Ytv+MKN+6qxO6Nzxc9x8MJsY78XVDfnmEL4LlS7
	 HHelxMWD6Qe/c7oiyH2jZRaGPNHj8JokYC7/VXgF+qOLewb9DTUC9fdHEuxR8uD24M
	 TrTLg2odylGAyru4NShS5AkPt79v1RxphkRWxNsH5aCc/3OHi5THiokkVEhDRAlZAp
	 YtWYvmIcUssggUFAsp6SghTvIR+2UvSI2C5rotTlkEimaZHsdQQR9elQOszYTsN1lC
	 T1W/OkFnXg8xIx001XPeqO5efLCG8Z8Y6+xOZ4ruDmvTW6aLxMa7C2UeVEULo6TJ7F
	 CDRMMx1pkMo/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6D97C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990872285.27809.13196895802972701739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0dc96f8cb6e755c527d1274b5999e62737f2d91834610c6ba54554a27d442c8
Date: Tue, 02 Jul 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719908722
