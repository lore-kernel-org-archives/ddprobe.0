Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B56839E17C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781447794; cv=none; b=KG+HyIV5lf+wx59FiO+EueLQRQuZHfMk2g6k1RcS4QmG5GfXQ0qAxjdM7YKLNjyYHxwKUMuOKs3VWa1QVc7xnRtFqF9bOcGZ2gkfnJK6HP16ypNiaw3G/GAmmYJEuVHjUdEzq6+Qy2m76mEWFxLP1dfjgwjTCtxSpMhM8ppJqGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781447794; c=relaxed/simple;
	bh=R8D7m4la7zJISfKez8SyqrqbS3Z9tEaJ8AfFJRq2UQs=;
	h=To:Subject:From:Message-Id:Date; b=THUdZFfz7y2FcSWj9eDSw2puyaCDXu8BV/bJo2zDkN+OB5zSOqKxvRAJnVbeQSzINi67Bw/xVME035qkNYWWWqvZfpVSf/JKek9RlG3CBDAhUWK0drb0WxBnWsoBNHaCPpKFeUJBMtHQZ00RW1IqBuC60LzO0lhJdiUhhIFLi40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyZrnLdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyZrnLdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F9FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781447793;
	bh=R8D7m4la7zJISfKez8SyqrqbS3Z9tEaJ8AfFJRq2UQs=;
	h=To:Subject:From:Date:From;
	b=WyZrnLdCaiFbldSYXadXAcw9/kIEJ2Kb5O6korftloeuKnTleFchC8rp4xzteQt4d
	 QnyoPCYoZItlJRRpa9/+h1SJu15vzE18HOYzkqbvfjdrwv/NuqYc3N+Gy4T7UH3XPR
	 9vXM8UH29BXAi3cHFfA5aTK2+xzNZPNlmmv2AeL5L6Hfr0D7DyTj+72SuwIBMdrCwJ
	 yD/buEu8fFwNEAo8a5bFpfoCHh7+ceIqMEtjBsNNfMpQbXZ2EMc+TPF4cgGE4nBLyh
	 1hyh+QasSkVQVmzX+LrUg4Iaj0hO5f9na8sq5MF3cVsrFpC3qAZU5QozqTrecLcmVG
	 qKbrWuAK1QWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CC5CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144779370.4009.2378003021102310347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09beef98f8300f039b4bd157f5e94aed4d2947d88faa6242119a82b1e06b4bb0
Date: Sun, 14 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781447793
