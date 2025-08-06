Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A7C1E4AE
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754440794; cv=none; b=XTT8tXVk6Xb7BLgrgAgYjNMFhR+k+jOeH78efPuY1AT06PpQDebVUevmK3ym5cm4h+94vl3vwcYUJ/rrVUnuHyqz7PtCWurfbgj41xXSd76duC6tzxVcz3a9fgJ+1JGjITTnp0vfflDCjxTZD7OSJkfiAygG4nVwjdLDifCzyuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754440794; c=relaxed/simple;
	bh=LLqoIev3ryZ2kzVhB9sGerYaCF+rS+vvkplWpw6hNzI=;
	h=To:Subject:From:Message-Id:Date; b=tBukKgF0v/jFIQT0ab7+zgnRkWQucJkA+3lPkhbk5wC8YfJEPSGa5NTbDRgAujFmKK0NiSXQZm0y3W/yW/8tSnvxkpkwhK+HwE58t989CyJUd8pa+mYoTcsHTmK46PwjMgzA5IlRtC8TwpomK+LlU7JpSeNQLYmTqxoaNb9aR5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJ5n+OXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJ5n+OXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5FAC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754440793;
	bh=LLqoIev3ryZ2kzVhB9sGerYaCF+rS+vvkplWpw6hNzI=;
	h=To:Subject:From:Date:From;
	b=ZJ5n+OXIu/MCCNAi8Vk6yWZVYzCIzOVbkPb+VAzt5SKSwTyrTLNivR1hZxPDmyE8x
	 4SBlp+Fkk3OJ0dUtopa4+iam7bGXOrlMAhbyFIIHXctGYDZ2JRU0JM6FNoQI6r2MhO
	 A0xYvrTfFBWppGoSkchQZMhaYhFG2VEOC6Kgpg0Vpa9Mrj5yVOAl5byMEhv66qo4JS
	 waaydtsXQtmgD861VBWZnwleKzsYYqSBVkIfGJtcer0oZZ8vMwLOfi/s06693O9ZSa
	 dcxLFI4OSOnSeKa2SgH/fq0vaUmzSo/dNl31ToPaPOvcw4RI7d+w31I3jmFoBKzKy0
	 zJO68OqUW2gMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABEC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444079357.32089.15090411774927489393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94720a9d2541d3f5443c63fc08aa1d6968318aa8b076941bc24d8946d80090ea
Date: Wed, 06 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754440793
