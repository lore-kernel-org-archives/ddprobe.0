Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF363AEF20
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785951034; cv=none; b=iFt+sKFQI+RnVzHF+M7Ww/orO3IkE43ajezucZOqS81RLb8+n/SF9zxASEssfgj8tYwqSNqJDug3ucssr5U0Xk5HtVCpmBYAZUlFVTQcHOqQCwr3PSYjRYmErbQe/NdJlCgVseU1CCYap9g3ktLKMqUF2OeCYwJPOU9m+tsKnyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785951034; c=relaxed/simple;
	bh=9u8gPPNY6GBLIgFxLX2V/eePBhR6QEI7+VAJi/jEiUU=;
	h=To:Subject:From:Message-Id:Date; b=eOcP27Rh8vlrTG7iv0vbX0e5YMK+2pXs9+L+FvdS9jCHYBKVc+pwojFeHNVyl8zvS7ccVWAmEULkNiyoICaUA4CfEkqN8tran71nc7U9Q4msP/P16/SS8ySCp0Cv+OBELqi2dFadYiGo1lI3h+vkQQ2Wc6m9oYzrkOvN7N6jplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0jRyZ/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0jRyZ/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB117C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785951034;
	bh=9u8gPPNY6GBLIgFxLX2V/eePBhR6QEI7+VAJi/jEiUU=;
	h=To:Subject:From:Date:From;
	b=A0jRyZ/tvu2zusLjHfiLFT54fz7Xa3CyYhGsfp6Kdfel5yMkQn+0UNt/ebpaWdmnr
	 0hiEDI5foDkJ5OadiNd8VG9lGxZHrLGlCyMmVXAO7Boj4Cg14FpE5gtSt+vElBxncc
	 n4zJWQ3S60LbhphdRvwy+g4LYcpmoKKanPgNJMyU+idoLj72i5BxdURPwrLuZHt6gS
	 O0XF1907OdZXMacoE4b6Zyx9Mz0kcrm4ADjVnfGYpY1UogmS0U0WnnfcvggxLzmt/A
	 QPYESlaypzhtClgDXG/vHqKay+jMDddHLMFEWZU/TTY7tTmMSWGjR4+r50u/+PTJg3
	 mUBkopst4bVbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDA1C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595103376.27691.4318725330336555909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb82d8cf8ac02876649593f186edcd83cab9048e394cf2153083256175a30f0
Date: Wed, 05 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785951033
