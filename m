Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A491C6896
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726671354; cv=none; b=YwrGxP7l4Vmee7Zil/BRmfZQ/Tc9hCrLj4WYYx5uRrLozPMeGOFVYFoci+GZdUPKd9Yi6yIL6KZ3nDk3GIKa/kSZC8lo9LbGV+gUJoJEQdUMDvLSVyWvoq0A14vcyFii4f7iXz5ckgCmYM+P1+Y3z58wsSZzQ0a8YBaeJExDk38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726671354; c=relaxed/simple;
	bh=ayapmvFcNuZkb1mu/ukSLiFFXeX0ellt9XxGyVBWgk8=;
	h=To:Subject:From:Message-Id:Date; b=YIAS0CqVEl8YKvBVsjCkI6nLGGcx/wHXv9peZ8nk3nvdejzPRz4UKkf4Q4o5gbxzAbs6T39VzvOXsQHJvq8bTy7U/DNaRISVL2KPaMj3U4wYujYCA4NX+QX2fxo2bXwKrWsM+TXYzL2X1w+s23WRw4DEukncXgceq/OL9sOtpvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxivPdZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxivPdZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A9BC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726671353;
	bh=ayapmvFcNuZkb1mu/ukSLiFFXeX0ellt9XxGyVBWgk8=;
	h=To:Subject:From:Date:From;
	b=CxivPdZ3xS1YqfpgcIluxIxaJXRs3vEJlKQhCIQEgBRZsquBzpeH5htGbY/Gsj80N
	 TjugUN1b0ScdB0W+gEZk5/Dyxy/6UuY9WE6C9Kf7MnN/9luV6b4jZidA7qIxW2cr2S
	 7/TTs4jRzKXtrOol1Vu4fTr5zUB0eng1sjLkfiHVMX0FUONeMXalFj2rM2CIyxfXuy
	 gT8lXJvyH5zy2O3OalQJcumUgkC4GcrbpRwMCJ20O82vw5hiesuRV4akOURZOtNFro
	 Bui1w+Cs58PsHGEp6sDq+YXg4DZs1Vnpr8eAkDQS2bSoQnuV2eG7EJptV7qZ5pYH6g
	 WCsHbe/koqqHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983D7CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667135361.17923.8135781957407931377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bdf5a4ff22ab6715ddd399397fe51e01964f6eb5018e52eec3de16c2d823a5
Date: Wed, 18 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726671353
