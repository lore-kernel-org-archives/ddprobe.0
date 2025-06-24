Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A132376EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750746594; cv=none; b=XXQAa6sji50uOgHJD4wYmvH0v7G+VeAWYXLd6TqBf80Cbat1sZmhOqZvM4EBMG3IV9SnF9ubEDZlzX+X49KQYy1d0yh7+wjCKvVk/E3CWvPZ/nkcyRY8NbR3kGztSRmW+xZ8NPerLc0QgPY8oYh/GlZK6CTyGf2rdC2YIFxe1bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750746594; c=relaxed/simple;
	bh=TpSmSH14oiUNNVUNY5Qs3u8VEolFnDAeX0yBd/bvleI=;
	h=To:Subject:From:Message-Id:Date; b=ti1OXom+2UuTMao5B1RbVfWA6CubMXHlwNvoAWZzQImbOHpMxM07ziR/oEH84ALkaDMiah41jEkD/knUkH1HE1Onn59oBgdYBa1feUKr059JDn4G8APUMq/5bVgL2apaPX+d/tc59aNo68WvlzZUS2mps5/nL/sGaW0ZpZlEa4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh+5q+L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh+5q+L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5018C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750746593;
	bh=TpSmSH14oiUNNVUNY5Qs3u8VEolFnDAeX0yBd/bvleI=;
	h=To:Subject:From:Date:From;
	b=Sh+5q+L1+tm2TijLnBlaSouMljESlOavlWEu/GqEJDr5ibSvW8C2VLiYxAwxQu3Jq
	 vomlr5rkfuLoWEHwsBcuKjVdYGke9BkUKwrbeVdOCI1FYFEefbycpEN+4yzAukUIYB
	 3oNseOpf29rhkG3RzGJIszOp6jA1etIX8T1sYctRyWkU5Jl4Cc+hMYTgCMMLrmP9/J
	 WsIxHd5nrOJNl3zzmVurIRNg9nQ2su13ws8FRNVpCoYONe9jTC7Op0BiOKyw73vGm/
	 zh7oUelaPM2qKEMn+STGFE4nIIIqn0E25/Wbvr8wPSah8T4I3nJKRpqCRJNh43ZJ/Y
	 X+xeGd8zygx1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94668C71157
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074659359.3925.10365018506425107160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0e57d3cbab54b189a1f4ac46333c83fad83e1df750eb5336df172da4733253
Date: Tue, 24 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750746593
