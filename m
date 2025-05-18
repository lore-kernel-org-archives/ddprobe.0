Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A90D2E40E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747607994; cv=none; b=E6VjtMdVJIG/nLqpw07PKVKMrkxG1lY7hHXudJiJUNwyvU5/+vntPfmVOicM6bdN4Hn+g+PKSjXSfPT5oLaRkuNGFzBMq1RYDGMwPWO4IQ8WzkKVb/VgArkUOe6yBtjUbnTgKuNS8vxe7GllEZeB2HNM6esqKTlejSnwYA6cT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747607994; c=relaxed/simple;
	bh=pBMYPpGB26hU2tHCjFN2gV7ZUYdVuWZILyonxdQdUZw=;
	h=To:Subject:From:Message-Id:Date; b=gX41wfCC+yT8EQ7ZK9MPitMR3ubthH0YDxWVPge46EYGXXzXls097K5swT3eeLRrB95XwWXhQBAyNl9kLT2qZRrJZssHtqr9sIXPEKB7NigDSAW2AuqaHUCrqcliG1f/cFj7v70eT6B2lH8H/NoseuMKhBzMEEu8tYh5OEi1NpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNO1TXl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNO1TXl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D7EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747607993;
	bh=pBMYPpGB26hU2tHCjFN2gV7ZUYdVuWZILyonxdQdUZw=;
	h=To:Subject:From:Date:From;
	b=kNO1TXl0eINf1mWBf3ktV+gjZHRwmXLudHZOyt3hqBp/9uZU6hGHw1BRbCYDrpIGN
	 l+PuBrL7ZMcSlaFfSEb1WnLuJMetat8mfMGLyFQhvyUOJnzscGjinWSfcPP80AOh/H
	 nZX9GZCPNLfgfZtXr4sddwxU9tPo33P2rUMcAperuCxNvt1/8MzNOhEq1y+W4b8atM
	 NXq7+Rfb8xalVciZNO9ICwxtJPPWMfQQPzf6LrbWyjPi+++W+pWxt6fooaGah2bwFg
	 KIcrHx6n3YbiEc2efoQFWnALxsPUt/e0tGwQMZ2QBG0+1J7EOuPRiwFDllanlaKb2L
	 G7ggBZljrUpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760799357.18452.667398420974614887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022953a8107aec997169de6ae7ad0fe793b2fa64a7789d3bb8471502c9e35201
Date: Sun, 18 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747607993
