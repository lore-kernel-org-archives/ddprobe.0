Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301221E1E04
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758378594; cv=none; b=WuTjxm68ck2efT1nPET+WjAKPAioPZUOswecPv/H+VGsRJ2wfaWtuK/rojBHrU9KP4HnQjZHzt2hvpZE6HX1pLls1iXOOdu9QVkl51A8oW2YPJ5/VqRu1FFcy7zV27ua9Lub9yEz6JGjweQtHsu/14kM3fMVA1yu1MbmsBgdypk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758378594; c=relaxed/simple;
	bh=f/raKSuy7RXIqSnaSKc9X720NgKX+HGtXMG+AmpRiqA=;
	h=To:Subject:From:Message-Id:Date; b=b3AqkOHTZhi3FiCiiWr+V0rcQ2Rh9ow+xehfZ/AfDoG7X3/RDS9M9J1YzWMkb2gLzj/md66PmzG+8vB2PJ2GNykOKL5IucKjSCC4JoaXfBRgQbL3ziGJya8XAFpeUaFYHZHM1LTXLX53KIByC5lg6eYTRzjARLpZXDSnE8X64k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6ZvpN8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6ZvpN8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CD7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758378593;
	bh=f/raKSuy7RXIqSnaSKc9X720NgKX+HGtXMG+AmpRiqA=;
	h=To:Subject:From:Date:From;
	b=g6ZvpN8YRD44HJUi4uixdkXBDBXQk/ZH059VjH7B4vjWvNUO3xSxdSR5fP8uBSt8a
	 kCn1l/4krLMbqBWfAGAJ90ath0TVstbIilDaXdb5k6qS6ll+mcLuOXezlEsU84GKdU
	 v29OKiV/y3Ibdu5HVSlh7btdTF4uYOLqShMB1gq4ZtJscOhDMqkSjJXETcPcSlZZCw
	 sGgqbx+s2CkEZ6WFh4PCJCyzlDublYFsQ223SWWfBSxNi1tKE9sPDciyb25Wbq9Bpt
	 x32P14+eN4ctBqewK21TQpkKrG0JZzMBFlQtDY2R9kGQZwRkZYvoO4OTo0lVyyiUcG
	 Kw8AzvMyDGu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467FCAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837859358.15976.12774575860524156428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0340fc30541d197b382670c00ee091dcc8d1e2b03af279b37dff015ca2888e4
Date: Sat, 20 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758378593
