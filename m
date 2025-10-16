Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E722741AB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760615394; cv=none; b=l1HnCJaEoOqwRORFgFJa56pC+/xGAUQ6dTNpjO/GWD7FY13Yjr3pEvj2dzNyPoJnzHjdtySFcdCmDDLFWlLazZvhWulTM51GYdJZ0HM8ohf6uvGMeDs5fEZnJpBzUpJE8x3eve8YKvWeLAjtUFiB39we7Q7wi/Km7eubmI4bbCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760615394; c=relaxed/simple;
	bh=H8EZEpzVP6B3YbMpI7CUWRRbwkDZI4J4Bg1dY7p5OjM=;
	h=To:Subject:From:Message-Id:Date; b=lN9+dmDqPXpHVIN3W4iedk1ceatuGU6Qms5r4p5S4xLoA4Gx6gM+EozpAH3tba555WcLfa70uUk66WMM5RSJZpQmqHmwVW45lRSx05UX/oJygakaEZDB6PhqKrFObLe2kJLLfvlD4FZgR39AeqD+Zs+OW1KAztJMFePoVhnBRr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzJiXxuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzJiXxuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CEAC116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760615393;
	bh=H8EZEpzVP6B3YbMpI7CUWRRbwkDZI4J4Bg1dY7p5OjM=;
	h=To:Subject:From:Date:From;
	b=qzJiXxuQPerxuGOj4+wVFoLnCqQHCQEEV6dFc5pQtwe2gcO5tBk1Y/7ft+DvF3xFw
	 at/DYcNbx2klP7eQlaPjLAeGpr+POAuLgxQ+LbzSZeALsoj9UJdSuYyTHmCL5TU8w/
	 12mfGWbJ8/WgeVVzSylZyFQCt5pWdM62Kw5z0aXTicHxHdXEnGkY+iLXtUK9MOO1Vr
	 AdXULJBycG1huQL6TkNtA93SCh7aLdK+alcJLBrWacBJt5We4UOR1MHBxn8VNu1YCM
	 OaUzhvoxI32ln5QVIfEYnlHuEaZ9ZusLqwFgu+llh8Wr6N1ogjmU56YxHlRGbwKevG
	 ijoHi4nk3pCpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904ACCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061539358.23799.8825198099499002940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a417b34668b9b3e3a1e175ddaf38fc8700407632e4fe151219505d39666d1c13
Date: Thu, 16 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760615393
