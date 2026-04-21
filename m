Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2915C374E7A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776807454; cv=none; b=UZXp6TpJNw+uUBpU0FsRzXmiS99PbT+g2k8GAgXlIPo2d6WrjLn9+LNK+P/Y1UvBvdasIE49JzZPfTdDBcehy+4khSLr3KGPO5NJfiChJrLg/E9nLS2Ww6l4SSFxvlzAn+VUVbozQPHQELCsxbzEU3znaVbXi4sJy6nSIz1Ceao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776807454; c=relaxed/simple;
	bh=FYRfh5e8VPj33383fgxkrW4+qLnmPaVKDeRZHZ+qyg0=;
	h=To:Subject:From:Message-Id:Date; b=Yfx2IXIUif7r8PrSX++OCRlyo1YEbsirnC9j3Xw68imLhkpN3t2Tc9MhHc9Im3YOEktzzECYv0dTVDHgyb921GWw8YTTb4PuiKr79+9KEiTkVcJNsH3BludTD+NTr+qI4V7BN4eHoBR6KayKeSwtLxxJqSYz3t2j7J3huElp4bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnTUE0bR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnTUE0bR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC57BC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776807453;
	bh=FYRfh5e8VPj33383fgxkrW4+qLnmPaVKDeRZHZ+qyg0=;
	h=To:Subject:From:Date:From;
	b=LnTUE0bRwva5xq6xwxDJ/+gmjnpiaZ4FwGJfQPNE6uIoO3Uwibemqo7eO0nzw/HQJ
	 rvwwzMatOPafnj16Tn1itdfDVhoz6rn0CXI/uDI8rRdC5VgPdGiLsZsbzj4ns9SYDp
	 FwOXjQ1nPpZ6ECqhbvBSEm3QDeg8f7J+MLvvIIsuyauWRIwby8StobjOb/BbX1J75H
	 Z8yt/kKwJ1Ru8pp1k8yOApy/bpM6h5gylKWNV3Oi2JPKjx/paBLAHANbnZ1ThJL/0n
	 3Xjxpetuo96o/d8qMIdxse9CGE5FMFs+sy+jJcPPs0PUAETSa6licA2EmU9kpoE3Ac
	 NAk/qhxtpK7rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89BF94CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680745369.1980.8819066016508263637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d99937b5c83721683ee055ba2baabf258489920fcc62eadefad481e442edd0b
Date: Tue, 21 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776807453
