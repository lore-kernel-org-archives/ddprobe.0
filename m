Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09927934E
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756411194; cv=none; b=R8sKlabJQqjmia02Uunc94eQQKLoRP5o833glppUR3U34JFno1TLKX5vGGPq6J54HLo+52UzBLKE7lDzaEtRMG7YTxJK+OlQsBplnOWhXglXFoh8BZ6zGmrsm7lMqo/Dh8Dmt4HF7W/tdGDYBMjd/g3QH1RwD4TRLEc7WC3yImI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756411194; c=relaxed/simple;
	bh=3ZUjxUup+u0fBRtsAEid2OewYwMlxOKTBfktES56WgY=;
	h=To:Subject:From:Message-Id:Date; b=WqDQ/yPuN8AeBUmKxtiOgeaHJE4KIWNOuAbTrqYKgIkrKDG3pOZHAd4phOw6SIw1WIXp+VwBXnroI+vhuxr3uyIOw7AgdqqxkwQimkSZJ13zc9bFWm+spkUn5jsB37JfyEu/D/tlP8/TMgMhGfXj73Jn0Hxe7jQPcX+zWjWgeRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFaG7dHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFaG7dHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4B7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756411193;
	bh=3ZUjxUup+u0fBRtsAEid2OewYwMlxOKTBfktES56WgY=;
	h=To:Subject:From:Date:From;
	b=LFaG7dHULywK9Xt7gAjPmnIt1+LxG1hpV364hF68GHakfKNXqR8gQnEO9dCJDi7NC
	 x/cLtQNd4Dmv3HynTJZmQHpeSBCaZJ+e5s7V2iQ+zaPc1vuK5NjcmApmAeg5ZktDJo
	 jk6qRRfbOTGIqi9QV4wPwf94TDBNvNhWMi69ti73WjX3+PQbeEcsn4ZmyF07CWplRs
	 I5EK+a+UMaJwJ8rRYs2gcQm5tp+ji9nPNcD8dsI+E1FJq5dYXy33OQG9Iolqn/9mmz
	 olkZPee956rce0HL+C+iSiD2YdJkPT8Jv61fnN8WhbgmXmhf4twXNlN9ZjyxIQq/La
	 j83HQYlvuzwiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF9DC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641119357.19374.6640853055247537309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33932a1af470ae2b0f9b75fa6a6914cca3c2ed9f5988fee9c8fb21099475b479
Date: Thu, 28 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756411193
