Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E696497B1B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767873834; cv=none; b=pWifKBj3lNVO2O1DfdXXqU1vYgfQvqpdrDUrBfKqGF7sV1sSOV6XcDkjPp+l8WYMdCuW+Wz6R0ZBfq8Dgxkjm/PPdoP+Mw+NZYiRRcSbZcYZt14CWRdw8nGzoLlbTygjS9wZPNYLrL+ynER2f6CpV09+tHhetLaIVpRjWue9KKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767873834; c=relaxed/simple;
	bh=0ZFYwere+0kA4/Hh7j/sJt2K+W4Drf9tixROe0FpzzE=;
	h=To:Subject:From:Message-Id:Date; b=XBXAQr0s8ls7hnzzUUO/5a/au1nWUtbOetvFLt837Mjk58BN3T9OOJgQ8KqAsRankBLAXpbI+rp+oE/GHn19h/7YIT6gpg+gSioJrfIqOOXxDfWbnFGBCA026hfmY4pI3EU2pPSGVqTnrlC/7wdVbzfotCgYNopLV6z9OqiBMYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHWRMsnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHWRMsnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E7C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767873833;
	bh=0ZFYwere+0kA4/Hh7j/sJt2K+W4Drf9tixROe0FpzzE=;
	h=To:Subject:From:Date:From;
	b=vHWRMsnLT3BymGJ9jwn0XatU18Y42h3mpZMTQG+CMvpU7v/H/pF0v2InkUqH1PE4J
	 eZg86vBDailGnoYeGiQB7HEFHawEfcby/ZcvdkYg3CtAMlLydHIwtH6AaoyyIdGBBm
	 6h497/aDsTJxdhEiI54weZsPlQrR1Dtt5+i79aDvZ0do6wkItBu3oF8FU4Enlrl3Gf
	 l3Ul0gWtavakdYVdsd2ZxQB0+a68LuWh3JEpR6yBhcj6GGDdOb36ygTO5DDW1zVUVp
	 4o6N/yvD2Jrdet9ZOt5BsdBTvC7TDrWbrbk+f4A/e2S1z6OUKspVReqezzyahwM2h0
	 mtwNPH93sy7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9232DD185E8
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787383357.11772.12069310183477007079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2adf88a563b4f1b452610957af02c08a4e0f6cbb8ba8f9400d82831e85bc2820
Date: Thu, 08 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767873833
