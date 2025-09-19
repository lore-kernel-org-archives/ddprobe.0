Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C995189
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758244794; cv=none; b=bq7iWzOC8aqdk4Tp3EChWtZ8L4ndbYaTs2rAUev6RlavXIPZ415qAWZwp1fzc1t6S6zsJbfdeRurQ/0c7WJd8GuQbnKY+VCDgoZdeltKCdak/ZWq6SybY3NrX9CmnNLG+YDt0Iumtwy64KmKrLpk1Dv9OARLhAP22wK1d4S4J0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758244794; c=relaxed/simple;
	bh=4+uwS+RbgN5XdIuefu6feAmCN2t+wWfuqSXhj5xtG2w=;
	h=To:Subject:From:Message-Id:Date; b=H0wgvb9vE981JGGCfBUtm3rpypwYb6qVC2KPED/v4wdkrafCeS1TeGqWYbOYWc6QH8I24isWNrK1lfIk4GTtH37HkfQ4POJjXqDE9UZiAkKrZsvaX65wOxiYetdbbFA7Ez4ybkJJATV10fBtIRMbMa0BPQAbbA1BQWvgbq3z+lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgamVUNN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgamVUNN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758244793;
	bh=4+uwS+RbgN5XdIuefu6feAmCN2t+wWfuqSXhj5xtG2w=;
	h=To:Subject:From:Date:From;
	b=WgamVUNNX2PqIYTev/Gr42VDSV1cEhz41ZxyHqcNBJJjvGBQrenFUT3W6Ni8cfrSv
	 l2QSHGgTCANf57PhiZ68H/d9XFPD8JGJueJqyZr6CBkiWiM1dHDaQmqhgPVe2WXz1S
	 YqVoV1D0oGd3EGwzE+GvAucSgDEJpdgRXyd7D/ZN3jmS6DUX/2rQkW2j1Q7SIcGyHl
	 4elokJ3ymu0gpMzAdCDOKFX1KjNgatFIZFN9dRAYfJgorrfIdrDqwoArr5NPsEZ7Kc
	 Lav8Mv/z43T0Z4TnuC3T+MvH/Bj8RWGW+uVFTwhmSwknt9Jy8GZQt4ZAh77v+rN+OR
	 75UrB9LRFHUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D3CAC597
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175824479357.28456.17497180906335552245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66680e2d10ca6ec77e76524084b65293aa068f66ab3723b47e1d4745410377b
Date: Fri, 19 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758244793
