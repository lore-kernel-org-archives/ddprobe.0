Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481511A071C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746954594; cv=none; b=iF8pPqgdyL6IXNacqADL5qwYI9Plo699jkbeTGXp8AnDljTFsirtOflIaPBLaDqTEd4+THpkRVf+TBXPuR9KuRhEjxzPhGlbf1fVfNH8OuCzx77m9FEV6OIZMVsmXXOHkCL3k60xOmnUKB7TG8DqzlKEuLqPjgRDgwWE43K+kTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746954594; c=relaxed/simple;
	bh=wqlHly0AgaV6GvGXkKuZ/RUQPPmYqKlZOMQHNHx5mDs=;
	h=To:Subject:From:Message-Id:Date; b=KUzmfUfdwEU1/TnKR0gNgVqz0H9QCocU/CICA9ueuPt/h3vSxSOCd2jSRettzTf6UqsxdoOVJhIAbBnKhDu8VOXc9ugOCzPj7oxL/JbKhnqtT5STf8txdyq2Y7XByJQHHZ6JosABVM/yzph2hUckuF7DktpeCbyHj7ciX1Yfc5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+rLR5Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+rLR5Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F2C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746954593;
	bh=wqlHly0AgaV6GvGXkKuZ/RUQPPmYqKlZOMQHNHx5mDs=;
	h=To:Subject:From:Date:From;
	b=s+rLR5DwwTmXKuJMljxuuVjynSHHpE0GfHqxlO9Abyvlt7FozviLVnFR6d89zo3tg
	 BkemSv5x6DWiXg9yOsrlo8Hy1P1Ixn5Lbhj1Ob3aOqlLgR5pCMLBeva8OOfsx8vMx4
	 PWvHyX9Iaubf1mpFa5B/tDSnE5+QpqRfEIiGQ/rhE8q/WUPNGP4Z+BCD9hsl7ADkqW
	 LvnMVQXT7LjIio3oOAc2iKJXL/rFKtBJMxlApnyzBvccRxiB7jDvGB5/DS0/fJjE9L
	 GnzOnkNylsBazuFmDS8oK41PJfAQOUNw65LePYwCZhPxiUPirLILPRZ3Eqf+SeSeg3
	 CzawjZsvoEKOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E828C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695459357.29629.12051329180940749243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1f1a46341ad0eda628a801dc047adce663b81c540f6d325e400bcfd9172453
Date: Sun, 11 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746954593
