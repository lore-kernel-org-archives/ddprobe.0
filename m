Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBA126C15
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728712554; cv=none; b=ffUih67wQ6sn7djOQJCL/g3qRmjEWyLof/0U7xoYfeM4TbNRX1nKvH9kBvqkT9cRZAGKiDo6NZTWAbMCReuKiJnoArMHn0vd08d3/JAofoh/b6u9/94J1a+QxYyDTeYC2qrrETe0lv+5tVCa7PTaQlQ4ie9LlsPKYa3QIYwjVEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728712554; c=relaxed/simple;
	bh=qQTlE9TWOOQm4FKn+ig/9Nf7hVgAjM380swKWg8vfUE=;
	h=To:Subject:From:Message-Id:Date; b=FmE88F379Npd3C2hlHsP10ZqH4q9JXh+CbQ0BkvOMv37rzQhgCtSlOZu8lGPlTbZTjb5Ds9KElKzNmgvo9Fz8GdNx7B3+ONOJLoX5UMuoGPDfQGVdLOdFI7NSfAvWzqLrfbP82fJ8/e3T2lEO1hOFaqvwTQXUE2mn2BrZ5CDdoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4R//5NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4R//5NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C2EC4CECF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728712553;
	bh=qQTlE9TWOOQm4FKn+ig/9Nf7hVgAjM380swKWg8vfUE=;
	h=To:Subject:From:Date:From;
	b=T4R//5NYD6ZLlRFSpZpWK30tGKyRwCiD9KNUAYxvdgSu4WVPn5BTkMM/Qthe7Wv2p
	 Feur4vaspTGBp1G27Z2tO+fJ7Mvo5iAQ4H4wHKYw2OYK7fzqZDRd3ykttDDFkP5RLX
	 swkW2gT6CgzFlFaS/Aj9C9BeqMNHWUfcVzf840g8fYTcWMbztqOiP8tHO9I6URbp0c
	 nxymKq4dG7B+AApjb/DtZ6j/DYlpcSCttdBfEhNanw3232ytMeSzThFNRLCLhSibmV
	 tor8QQQvYBQqyrktw32sk/jfFsJGhioR8PFj6bd+Q9HECzadorpVerIE9nJLIahkQl
	 RtTeqnXv71Sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C5FD1A428
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871255361.6239.6109591399316312867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6914859744901ae3d8f31fd4da67cb3aaa751349bf668927f8cf8594bcbc83d3
Date: Sat, 12 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728712553
