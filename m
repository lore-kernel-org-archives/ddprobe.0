Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1D419F416
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744653594; cv=none; b=sAC1aMlcGRTUPrewoqIKsjysHMRA8Vkfu1ihgpbAE35yVjA6Xl+VKusD4dsKkF4WMalGSqiuhzUFEjuIuXTgo+g/9LWinEvTG9UEE/S7YT8HcyqbsiFVPtB3m5hQX4/3fScBaga9qE12MkK8ZbzDR8UKirR+1fJMbWKs++tP4Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744653594; c=relaxed/simple;
	bh=y8/2/p3aZnvlRF311S7zwQw+QGAYa4v8MDc6i4IX+iI=;
	h=To:Subject:From:Message-Id:Date; b=Ocy3vpYDXtWiB9xgZ4VlJjwlqMS6qKeS8cDv2Oe2p1vsf1izaXeQE3gLxY6v1eENFJY1H66508Gy/r6bQBXUfAAuQsCo5ZCwRwDJED5f4IkzZqiZUyMXja+djWiCmEV5PXlOb1zFITEPjQgUqXkYfBoqnSsfNbko5Q8OFKaCeGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWI+khEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWI+khEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB039C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744653593;
	bh=y8/2/p3aZnvlRF311S7zwQw+QGAYa4v8MDc6i4IX+iI=;
	h=To:Subject:From:Date:From;
	b=XWI+khEyF+UmkrpL+WYLmdGN170rPXCWZLaZoKp7tQQZMeSkca6VCNWJRETtFa+7A
	 T8qziqBmonCxBHGonmhZtosImwJefaU6DaeyjERgUzh4OgbmAHBDJufnN7onEWT1Qc
	 tH0lrs90Gb+eZvTzTe5eweNpXAOAA58YlZ2MSx2Bg9oQw8NkdXUC6lj+Cs9wFtYV3d
	 qTvSg7kUU1chtuwOfVN36//FzK3fBF5U7X2WCOPq6DY1zuVbZrzX5BJEP4c+4LrJf3
	 /4QRVVtdV540zL/ewbz5WKrSApOVJCj9ENaRzqsC0t833Wey06V78X139uOILIIblh
	 OQgiLIlRu+qSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97149C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465359360.14513.14960222423928207252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6541ce043cd194e8513c25e965ed29b3f97168bd9327b8b0286db7848540eb13
Date: Mon, 14 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744653593
