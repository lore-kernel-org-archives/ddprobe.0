Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B72AE69
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711913897; cv=none; b=LJ80+I5hJyEiwol5tHCJIZd0OBZDTa2358pF+BBP5svPRa4nGNsLmxwxHAG+fkb/vDhvgbZOiNIHJg5/0vSQ/Nk3NKxEdFT48DRyli0MAZhOVcMuMa8txUkPvj6iYTMzaeCqC7IttwMcEm3lCA+36PMAi9J0XujQNkjZYEgTvNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711913897; c=relaxed/simple;
	bh=JyTXaV9s2d6xWCkwBSYyjsqSb2k5bWlung8CcxBdl7s=;
	h=To:Subject:From:Message-Id:Date; b=TC7rWcikt96y90tDhVJoUeYPHb2l+/BgVxVtGoOjULOTWVqmaXrphTHBNVjWY4nLUqHtsK8r9dIMFM82g28wsKvVKXpCEjTKvjQ0X3rCahhmJbtXI/g2nlUXgWa6L+ib2EXRSUUlgp7HypgyqkWL+9EVlF/0zANnSlWJZBVy/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUChnEuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUChnEuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B3CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711913896;
	bh=JyTXaV9s2d6xWCkwBSYyjsqSb2k5bWlung8CcxBdl7s=;
	h=To:Subject:From:Date:From;
	b=pUChnEuBHjnS1cLupG9tTb9CP/L9SmEe2fhvzcx74iUbmMfy4u8RwuK8CmJVB6cFo
	 HiA3iZWrJ+Y4sB5SF4VeM+SChDaNCUcmCNtbVwVYHC8/brsqjz+4OdAY4N2kp4umTm
	 OOtf2C+S6cX1VsMcr/mJ8c9EX2vPvi/keOZflf6bBTQhIb1VMBHqt+F50hJm9ix4c/
	 tesgfgRBEW/htGkzin59qxdsi6kcesUMmW4QU3RzV3VXac0xbnZH+jtP4GsYw6OhXG
	 kEJIgpJVCiKl8C2TsSCR7Tv4PX0Ur110wL2lu5CGOjFPyGeyaDDQXm5+TknhkEE7Du
	 Cl271uDwevi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62762CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171191389638.9725.11658396959135689614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee3ea907958309531e77a326cdf93e0c142560f921ee5cd136cb546017112bd
Date: Sun, 31 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711913896
