Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D021DD9D1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738575354; cv=none; b=UKSbqKMrWKknM/nib7JUPOyEyXx3e1VbM5NlMDWJ8K19dbP1cH+lx5LKngaJNOkw+Ou/uzt6AMY6PON+1Ra4Z2WnhC7VGkQdHn5XPA2DMUp91h8lgDCdfDWu4H1rdzeNzCovFXWZzouHPSAdXi2Sah53ePYlpu59xWCqQomyWXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738575354; c=relaxed/simple;
	bh=2xzJjewiS0mmTE6eYpyEGQg8hoiBsABk0nLx2cnkV5M=;
	h=To:Subject:From:Message-Id:Date; b=BQ6M2oXsVglLZccPS19fA/VGU96dFOiqPKL9aBO+ZDz2UJ3/fPq8erWnch+eMCXmb4S7E9sM34H2NzOdfT1atSZqDHBlTsJlL/ZDSVzmQoyGtuJ1adsIpVugNQKb9iK1lPbkr0XbFhOgc2b1AYQPy4OaOvDfxCQiTfRRl7/QIRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESsyBvR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESsyBvR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB4C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738575353;
	bh=2xzJjewiS0mmTE6eYpyEGQg8hoiBsABk0nLx2cnkV5M=;
	h=To:Subject:From:Date:From;
	b=ESsyBvR5fhmVOYs1pSTQ5mFByv+UHCPQkQ9bLsB7lzVlXtz/1r1pxgCF1BrJqvcmx
	 CiDFE0ZKSIL61Niwn3WRcjN9Kh6kWmwp7CSyk2EaOPcdLI+P1p/x7vfjAKMV0RuL2z
	 LcE3oLjzv431zkOWR+0f0iAI0q9ejMCjIruJ+BTd20485HJ4c7ZbyQ26mmSwKeU6RU
	 zKvGZ9isJctDSVNxiCbGD/5kKgSo+lHWDtBtmyXSPH2PojyyPzy8OZ7laUOKsOo4uj
	 C+1SycuMO8DpORR/O7lLvdJoAzHXCF5rAHj6ICLvJ27TUoEaeBD7+VcvFiaVKn7OQr
	 p7KcHoSqzQXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A5C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857535358.25106.16822519403144985194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a872be2ac49ad834741ee050d0179cefef21fdb3a901eb6c91a3edfe15440504
Date: Mon, 03 Feb 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738575353
