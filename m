Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C206171C2
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727534154; cv=none; b=N+PDDRDHPXtlaJicxUV6bxscoqzk2/cNkX09Gt1LKpxpqAh5rGTMOzeAq8JqaSd08hr9QsIbI7BXefN+sa40LmsXW7NrBG/1zUr6894KFO9LlD2Dr/jq/YKubO2wOuYbSdR95wryS7Rv/CoOPWUrlNVlaP1E4mUd6LsUFc3KVxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727534154; c=relaxed/simple;
	bh=5Xea0xrp43LAW+mHWc7MVMfTl1bSlp0QDiY9CrezAr0=;
	h=To:Subject:From:Message-Id:Date; b=TZoup03CbPxZHphA28Sx2YRoRMO9dO1hksiKpnGCNb4Yic1jrIO79JmbLFwlhqm+muT+pIwuSKjwWj57CuQiraNwv0jevg9jYctoQtsrcEMPqa0QTGYD9EYU2MJUh5qDxSI6T/N6Tj25a3w3rDE37rCxTVBFjQ/vc5wwz5eJiaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIPpPOCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIPpPOCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B8EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727534153;
	bh=5Xea0xrp43LAW+mHWc7MVMfTl1bSlp0QDiY9CrezAr0=;
	h=To:Subject:From:Date:From;
	b=eIPpPOCqWWONyPssgnR+rlb1uSi3FEGesX7bxfLmIwp6mNwfSo9ikVrwI5yeMESlX
	 MaFUAo6VLH/zH2csywLB0F/TgX89sAjt3YdnWkl5O/ArLUrjqMGvQG1pLgMKATCDGv
	 0DL77M47WxtsOGC48dk1GENvGeAZvaU4hCSeHvpSEqcR124WcrdrwkKwypomE6pmm4
	 Ppgl0mEphQ9CnjjgHt7+cifGwo/hsA6IIc0mGLTgx7G2G0ugBLIa43Z6CZaPRuK1B3
	 PYEaxzB5vKbXqOUTjAI0LX8rTITY2308Mwm4tcdnTRvFL8d/OC3Srnzz+a+N0UqSYo
	 NMxhv6SpOJw/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A46FCF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753415359.4936.4257603550206980507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dd76b42dd0fc017bc6ae83df68679036e28b04326db5b5498a5639ad9bebe3
Date: Sat, 28 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727534153
