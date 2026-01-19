Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0662938B9B5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768836834; cv=none; b=DL+M462u4J8p+bJW5Gy+oMLHQzMCUeE5RbC9wM9X5HNJKKaD5DWyfKeDFbEnLGZBT0RjIX6aCNuCeyL6Ay4jTwGdVwTRX0du70Yho/zwORppvkzp5LOtlavuXAoVwdXAg139XlNFPZ/MYsIVrC8E8xE77ICjCPo2us6i7jcZ3tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768836834; c=relaxed/simple;
	bh=EcNHVwGETwn4lJ/7ywSudheJs45kuLpmmUsvRI/ukX4=;
	h=To:Subject:From:Message-Id:Date; b=uQlX86qE5hO4vHc5Ka6WL2A3R8SweIbklrC+q4w3PqlENb4Bq/Znn13yfy4GXqrbaab3ywsuHG5x5GZTBdI6in+8jHElgcI/O6A3JCHJA/W16bIPaml/LLN4rTfVZbWZ2t1UHp5x4SxXb1XgKrSuZXRlxgfYky+zRzObjjTvZHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcFiMCFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcFiMCFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D85AC19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768836833;
	bh=EcNHVwGETwn4lJ/7ywSudheJs45kuLpmmUsvRI/ukX4=;
	h=To:Subject:From:Date:From;
	b=qcFiMCFxDNGLVKrMrocysrni9phYS010wqaNcNlrzR+bJ/IA7GL6c1yWbH3ZNv/NU
	 5Vel6uag3lUuG0XfXjFqJaIdsTo3cfk4Aly5U33VtxxIVH04YDM/2V3FvY2VOzdRDH
	 nf12oqXYyk+1/I/v41wRKqKlBejSjPR/YkoPzGzRF/VW0rCBsxW111g8GjQH5ES9YI
	 QZZbGO20sSz6McmHmEfYcW/Y2yDz/DCrdGKriVQusn6t3TF9/jx+188mROr9j/lSTa
	 gpDqjjLG5sUZiXVyjc3jtdHXOTDzWqtBJdAH5kxNpqZJT2ZjT/dLyKP+5untTvrB/Z
	 MMDH9Wg2gNadQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E7D29C36
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883683357.17894.2185571148537048549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9981d8ff60e4ffcf747d46a94621efd247d28580470ac9911b049a60079c80e9
Date: Mon, 19 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768836833
