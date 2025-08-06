Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E4C28FFCD
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754495993; cv=none; b=RvlyOFQe8WTz7tUETac1JevqqTUtfNQlg4v6D6mrkqyAdwYiMRSdA9CIW8QJn8CyLqS4/IzCUsIleVyTm8Fvx1Rmd2hHqkW+17LkCXEe0p8xnBQBqe+RrYjM5ZkEWRYwHCk5kAR355j4WtGWuMrMk0RDUgsx9XdSmEVtXqA/ysg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754495993; c=relaxed/simple;
	bh=ijowqxA6Rptd+KQA112oAqjtLDFFseW3Z2ZvZ8kvuUU=;
	h=To:Subject:From:Message-Id:Date; b=bCm555yU8wJuD2sS4Qt5flKgpbElcSb8kYQjHOBANZhtP1Cwshg/VkVrtouoAdIO29X0QcGiIZeIyDJP9j45K9SF2z8iCAUoRx4ww65ypnO09iG/Vek8tJYUFLbHikQhprn2uSt9UQAh6xxnElBGm3is/ZqqOJmTlEhu1lT1ZJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JELMuDgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JELMuDgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C66C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754495993;
	bh=ijowqxA6Rptd+KQA112oAqjtLDFFseW3Z2ZvZ8kvuUU=;
	h=To:Subject:From:Date:From;
	b=JELMuDgDcKC2zRR7/+uQH8lPEu6dpb9bAc0twqXmSS4udJ3x+YbWPnwYbhBCoa7qE
	 M+1JDSPb8uB8NS5LNzMydeliqsENBT6YPyjTJtNRqIcEpqNqbQ+bLrMC7ClBvcqMtf
	 hd/jfV7bgR0QvE7MFYjXZ8b95em9DcEV0Q9C9VkT3VniYr6UlThnpW0aEdYQJxr6a7
	 PhXAIP21QWxTj002ejA7uUsPi1fgIEhDvOOjDswpz8epW6E6SdH+IQ6uKW+v3kdrKx
	 Bxau74RxjkXowZClSbfW6msgmJCPoCZFyvKdMaJZxDNGx3OEaY7ypmLpQPpAW4agxK
	 wFsvIVAHPA24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004BC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449599358.981.5756465905532502237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cb254715eb61538e32e56b2a277aa97820048854ceea827198f9b7607ca360
Date: Wed, 06 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754495993
