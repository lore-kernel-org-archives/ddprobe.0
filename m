Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1091134BA54
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759710594; cv=none; b=GHcrP+Edhb+tX+e3cSxi/qGD4lyIwOnCMBtXaa+98QBrtO0soMT5hKbW9AKAq7WAJNWBFN1pd17rN0hmW1lYcRqvp4KPqmj3yzn7QOGTY7/CBeX92RyrMwlqYQNo5pQoJz+AL75n+niWpNyfq/UZoqny0v71AEuUoWESvp5zGV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759710594; c=relaxed/simple;
	bh=p7UkA+0+HvksPK1/++//H4nF1oSBapxovSye/74eGbU=;
	h=To:Subject:From:Message-Id:Date; b=bJLK7qwsv6GKS/30VqeIfR5miJM9lr0q8cxSybI1Ktdosf/pz7tBehXqchBArXnyqffDhxkc8qT0QsORmtHI8uOir+EwYh7fGafNL8D+LlsYd/Byk+ChY35xsn3hpqVIeCWBaKQa1DQcfee7djqKoMFNQm3D4LWRw2JdbfmerBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCu5TkIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCu5TkIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759710593;
	bh=p7UkA+0+HvksPK1/++//H4nF1oSBapxovSye/74eGbU=;
	h=To:Subject:From:Date:From;
	b=cCu5TkIHxVxttlSe4bpvAnwqXqJ/5bNw5wgdPPdZ4tJnGzbnBm+m7+2PfMFGkNYAz
	 r55rJFuNr0lMfDN89f7j9YKaB5gte146XeXlIioe1zVIfHpcLDAA/CvVBI6BreS9C7
	 HJvj848tl6ZC/SzHhF2CP7OQosEzB2+Uyjk5C3/bwYTPjXI7BmCFdsBoN4lwmgr4Ub
	 k6A9wX5nj1YjU6Fd6qErSDwdaIt2DT0Rz0ThryxO/YehRXLkiNyW11vZ4kWHlFenPU
	 WVNcLbqN+s0jsCR2lPFKC9Vnj+bNLveWTlSMKT51hMfaP+XsLWcSlgXSsb9ChUzIu/
	 rgXBv1cGtHdiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C1DCAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971059357.30953.17537354090524185245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b386112662aa232bed27f44d7c603d9c2b2391824b5c1471830b698ff786472
Date: Mon, 06 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759710593
