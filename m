Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FAC1552E1
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718144303; cv=none; b=Pkj4OVkGkkw4y+MoMWiNoNYVnr5qWPNlTlQ9ZogW+1OjXflKSHY92TXRmMTRRz+vEDBSKb2B9YXi1jDZhEVfGzVJkfUFr3zgOJJddZyS2Ja1p3B9oouwPFv3/vzba+ohlABRR+0cR19xxP6zkNdEN+ykeS442SyeZ43ebjrU6Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718144303; c=relaxed/simple;
	bh=DJIDIVAR/ovEAx4+ZfDI/ItWIzQg0Z5gVa9QxgOJh7M=;
	h=To:Subject:From:Message-Id:Date; b=eZuoDGYBcme3jCEtTRvvc6rwVraU5ZclGNRcmD7RrltwUaG/kgi9PRBZ4Z7b3po/OVbgUOn1vffzZBPTy37jimqlk7F9MKgPS4cC6EWVhuLAz2dg+64esO8kwlXABljC3iLkTNHCnCd3HPpaOiUkIi6B48gm+Q1g/InFi0hGsx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJyqpGMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJyqpGMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C1FC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718144302;
	bh=DJIDIVAR/ovEAx4+ZfDI/ItWIzQg0Z5gVa9QxgOJh7M=;
	h=To:Subject:From:Date:From;
	b=RJyqpGMfK7sJ85QCr2TrOeCEEhOS1Uv0kRGJPLPWBwdZA9brN0X+bI8cwcNn+amgi
	 kZW3Yid6W4giLOtLAlpkjFcQnZI4h/izQsfnaDRsw6mrLgDs9AxXUpwsjg78gUcMpl
	 EwvOFx/G5nCVEEkFrTC0QFFJhS/VlvoUrYsI4HOHYRWbw2oeichEBb4mH1Mk9FPFLb
	 8HhGt4W3VvGcQEWvYLtV9ozuTYb77KS6+93V0X8Mqtf9/qMuKyXcmh4t0RXmiVNKph
	 vNsB83cNDtJrAXNH9tOVJ8XhPbJ1m7OEDB6jT2denmO3gPkHMBvkmyiEXVyK6KK+nB
	 WLXGizx++Ja/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBF9C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 22:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814430277.31501.4637325977226391669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e9158b011345351fab5cf14c20ca328a07b5570312d7dee5ee901dd4450736
Date: Tue, 11 Jun 2024 22:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718144302
