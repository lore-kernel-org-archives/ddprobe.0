Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98FF17BB4
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724115953; cv=none; b=W3jsDkIhrikitx0n6iYWwsELa/iwJfXyV4DvTQsTrAYC5vwUruo6UknGiG3ZYOXBZhM8+QzLnTrnt7cpdcUqbqbdlLw+y1E34Ut+qj49ilzAihFg1E75vjKgS48vFOiUL+NZSiJXUH5A0fiVTVfaFh6c2ZHt3iM6kSEGlGvUYqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724115953; c=relaxed/simple;
	bh=rCkiod2oS6Vc98scCc2mcCLPdjDkjVDwxIhct3Cx63Q=;
	h=To:Subject:From:Message-Id:Date; b=nTleHIbEz8S8U/+XFArf/zgcja3siTX196Ga6gjrMpmcIdjBJ/8pvUgp6L+SGG/WwzVK1M/Il7MqUQHXLKwC/lgt3b22ktmy1q8I7ny/WSABhsj3lf4xGmo9DtfQsvVQG0yE6sCyr3rXmKt2oEzRo8A86TK8EjsXkGg4Y0TqSjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFHHZsEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFHHZsEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E4C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724115953;
	bh=rCkiod2oS6Vc98scCc2mcCLPdjDkjVDwxIhct3Cx63Q=;
	h=To:Subject:From:Date:From;
	b=CFHHZsEUMLfmvgkigWYYKEe8xHcCNTzwYqLwEY/jUX87QE3tXHJPDGlLDlHBbMlez
	 PQ9yaq6RKVoaA74OSsQ3DwUofhCzQ+nuKkWx+6LmDnaUYCAijcRbn7v11opbbgejeR
	 YcA9p0896zLeujrnRJ0+sFwpWZkdDybE4XHmI7j2puhWGYuuBQXW+c3hBhGM4EIyT0
	 0I77UUdeE1MKPVoim621xbZSvSUxh/9w3wScvCJAEDqQifi2rfZoqx4QwV/8krVTQZ
	 bQmZMg3NYPz1nXaPS9Y/YYMIO9hQ7u/WOe0jXf/ZVeUkMCa1gPxctJ5kh0RLWrfvvs
	 sWku9CsRYs5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB8C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172411595358.21472.5504858751690576564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376e761d807572240f87167c2cf78cbc46b958744b193f007bf7934187de06aa
Date: Tue, 20 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724115953
