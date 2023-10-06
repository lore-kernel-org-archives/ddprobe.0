Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCCE2F58
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDl8raz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE764C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696594028;
	bh=bc1HoGFilqYltTqGwCuS/DvM10/GLDUHJm+nIzCQrK0=;
	h=To:Subject:From:Date:From;
	b=kDl8raz7v7TqkiNzOdPbFvcWx5WFANc1dr/zjbZ9w/k7Ed388U3x7gFowM8V0JQzo
	 uWToDKDaNdfmQaH+pAd4f2wt+a3yZFPtJfce/LGHJ8sUYp39zKSiiTBnb31c9cd7xh
	 gNj2snq0P4DOO+fBRAIdJA4KpwhIUfJVnbVRE5RHeUfOoE1JcWtPhb1vZrTFy++8qx
	 +SlbGu88LzybvI53dyPXl2KoJpjqgYVu3w6/h+0RSeeTpFvoKDARiQjqtXhOBVsGF5
	 L37pYG4RW5kDP1/xGlefbp1IRKe9DqjkBM9PHjeJg/zgsyUhpCHTvHcqimOLIEWYET
	 P2dDvdB+3dZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD00DE81DE9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169659402869.11276.1639421214296981245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca38d29be3cc7d0d3b1593955b4ee2179e58b699b978b92e26d5823b84879b35
Date: Fri, 06 Oct 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696594028
