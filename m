Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246BF9C1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749329994; cv=none; b=LubupexibWLIGOVjtQylQbszJhfOaOwMcU/a/PsUHFDsBUFYj1VQOemElX7tXxXIZ5pQpEp1swIZpEB2KNiIOjVrlZFwmGcYdTFbS/KbKJgJY0cTnEKCjgMvkZSlR/CFQtz/q4J6Xn1uapyxOt40R7yETO4L/mSuI/Lppp2ZHwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749329994; c=relaxed/simple;
	bh=3h8gN/nsRSd3X37XTvLy3UzvKzyXa5VY3OJ8X2ilcQs=;
	h=To:Subject:From:Message-Id:Date; b=RqkFqk4KHPMEmsnpnrBhp+J9wviw1Qqo7cH2g1l54PAgUBOA+KtWg0+ocOj/gPQcg12BcDKXkNCVsh3ZkRpKQgB2oqGtEeP6v4GU8SbqRQAlUSt/6nJ48K5MovISxTZQU0SJklpUEgiGyZ1N9okqekJakMefbUjSxd9PDK9rFhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmqfiOR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmqfiOR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA094C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749329993;
	bh=3h8gN/nsRSd3X37XTvLy3UzvKzyXa5VY3OJ8X2ilcQs=;
	h=To:Subject:From:Date:From;
	b=CmqfiOR6xHR8+DMnTIXo8j+vh2Rm7qcg3R/Su+zKyd0rAjt8gCnsQgq0PbNPI8xqg
	 iXAOu78XQ7x13IQaEwV6YVKQRyr+P1Tzw3zZcPDOx/Qz2FmRNcCsfn75g+KGS1QWny
	 FF0yYHROhfTxrzQ1U8rcjursLjkDp70F+vKpyteHZ7ptdiqXO6IDU1k3rZEtAZOu90
	 h+JPRenHCHvxe3ZUrD5/Ib2t56iJOABDvGzgpbQRuoKx9bsachM6S2O6UBTIbJ7udh
	 aSTicFHXroEshzYbNvCDKU/h4/6LYkTfnc7er70HwGjTkvx9jmW3XpYriGPs8amkgp
	 IKCVxfgXjGvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936CCC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932999358.4577.13831289969356052317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde15177ca536c6353eeb87da79aa7ff87688a87abd2780a41fd81aa625d9105
Date: Sat, 07 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749329993
