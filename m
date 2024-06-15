Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E43E2E400
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718452703; cv=none; b=boq8u2tNUFc1ELidqqJTkxp6b6CROQ2H6ZkK9Z9XOIJj9NvAZmgjxZ6hRFHJ8qMt3LBXg4FDBrc/l6/AnhN1LhtYGHB85GuvCCUGMx0ePmEqEyluvAZxb/0I8vckby+cfk/cUlY2jyRbAj9rwsul1cz3rUBDpOEpI3lNr/6Uii0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718452703; c=relaxed/simple;
	bh=wqmcSJ9sPTlkep0INUgt/IcDL4/LCTWE3VdQnSND4HA=;
	h=To:Subject:From:Message-Id:Date; b=rpPQiVTqkaPKcByA/uVVLhPzRBReDIXpK3BzngrvnpE/OwK3Y+JFa0H/fJG53buLBJvIaXEjfzh/vVVOwvg+RiRQeUWBF/GS3YyxzXWyKdJ2BogJitoCJ0muU4oxvWlAgwadIfMREiv2hpBcJGG+8caufEyoT/rXokt5tDZj7XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMxLzPmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMxLzPmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C1CC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718452702;
	bh=wqmcSJ9sPTlkep0INUgt/IcDL4/LCTWE3VdQnSND4HA=;
	h=To:Subject:From:Date:From;
	b=JMxLzPmO375p6/zJFI5CCDsYS4aPiCZingI6TMwCxzwysd0V+09I/aJGqiMBPsKRA
	 3VW/59+fMCYnO9HdWbp97GcKVlIOhT49H8sCV1f4mGs+aeRXZ3bI5BqS0G05rA8WGG
	 qwGzXIMnlqEV71d4w7HnK/70Wx5swRzA92wnHGlEUEnaBTlGRJ8Q//jJ1pOpJ9wEwd
	 IH4gOpnWfiNEiKA6JHB9Q2wuR2BdaB7ck5OhIUEUswLcXAjvqLpoQH3fOdVEmSpuHW
	 SLc6b1QllVVp4qowP4UyRX3i0YNZk9FjrovAKAoA6qHbVqTwFrmy2bk07KCViwwXUE
	 mpKz0OwUcCfmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7B8C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845270280.19148.916723286070793284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334b9958e4ad008036f5506178dc9f8ad9624f405539e86bdbd58ebf90922ce1
Date: Sat, 15 Jun 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718452702
