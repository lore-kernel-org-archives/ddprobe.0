Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E499460
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728851754; cv=none; b=IZYd0gieR4RT71rHKjVGf2Zs2hhPsAmZNqbB+7yecPLbXyu8SH4NTyARbzOQ3zDRYVBhfDz8EU2GArIqTOlu4tryY66jwIHA0EPUtMTNKkEl3NJnhYvBo0yiq3qZJkVl6r/SbtU+RD/n1D8PtMsM+f+twOno4H0zQNGjI66DQFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728851754; c=relaxed/simple;
	bh=Rik/bu7YC7hSXNAwBNzHjj/bL4ySBxQIGZRfu1Xu9uw=;
	h=To:Subject:From:Message-Id:Date; b=SDfiwunIyoPVx16chZSe2y+Z+6QVe/EOT5mTwQbvC4/hXCZ3AVG0vfEsuUK+Jb4SS4OyuEJf5oyRCEk/1vHOmsQtxwD+zjrP3NIXOLO9sDtmh9bx4NVgeEQtKKfmY4j60M6Ti10oD90wSfkp9C4iV/68pROnZbMM1h9f59TYY9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKtigrYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKtigrYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E0C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728851753;
	bh=Rik/bu7YC7hSXNAwBNzHjj/bL4ySBxQIGZRfu1Xu9uw=;
	h=To:Subject:From:Date:From;
	b=EKtigrYgH+vrkyAKnY/gNa3YOOl+y05ngHjhQ+Oig8wsX1GBOsLTQSd3rasb/ZVgt
	 NctJPhn2Rgn1Kmj0LheD4Kpr7204VK8u8IRaJekAWaSRQMv3aPaOqQ+TVdNkgWoJNc
	 z0XdwloU+/i1GkB7+9TqsRIKB0ALJrOazM3AOvEFp10Q+5uvrWqBN46whfSeRWvYAc
	 FcgFRgJ8zFrnqJDdt4ZOK1zOf5CsLKNaNs02fQDWW8OFFC782VX14NwWQbRvosHLmP
	 F5e/p2TBmahR7Zt2JRPB79j5Iyj+RsUuTfJ3Gd3Vp/WkfsYsZmcPoBx9f00J42SeCu
	 9pVLqjQGFg3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410ACF258E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172885175358.6681.14639149577421290441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6916c84bc2886f66b9698bdd036771ed958bee5169d54fc68c9baa5516135b30
Date: Sun, 13 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728851753
