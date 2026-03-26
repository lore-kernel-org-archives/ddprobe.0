Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEB3288CA3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774550094; cv=none; b=Yz4iRtoMJLeXbYfGWwK5NAvnHOgNstt0N073aDcT1u/ZC5dsSCm69GeRFCGoWkUvveXleRACaO4rNEI37DQjxSUL0dRMwaoyRt3T39LMJ97B74mE7g58mLyMi4uUnhGC4damM74XQe7/l9sBSanMCwL80FZRES6Ubj4HEb3A0tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774550094; c=relaxed/simple;
	bh=cbE0ADwDO83AvJr+F3QWNqkqtVKNK0493MSCikBNB0M=;
	h=To:Subject:From:Message-Id:Date; b=SWmxaA5QOxetUcQlQQT3nI0NmbRPegWlWzBlJtkg6DLolR+qjqFzGHttwni+Nz3jMn4zbZY8H66smS0UmT64DUi7YsD0HD+86DzC9/pUs5RFL93rqha7aC08NIZj3Vma4aV4ig3bo9yFkgxw4drGSjsbrMixrAm61HwQfetT6I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dX5cpG8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dX5cpG8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774550093;
	bh=cbE0ADwDO83AvJr+F3QWNqkqtVKNK0493MSCikBNB0M=;
	h=To:Subject:From:Date:From;
	b=dX5cpG8j8x0TXdDjt8E6roQ7H2Cb4cVp4jSTsTa+bJsvGFn0b2RGNB3jKxs3ZBbI6
	 D6ndXW+bLfgmAX9mEvcvVKLg7u7RLPhLfZ5gBfST3EdOWssKQA05C1kn5zR+jsTKTa
	 /MssyIEv/+AE/Vt8+xioSG5nXmISrGgqzW4Jkj/4vcB9Wn9WiBioq7tx9oljAOHwZ6
	 jLK3++A/Z8Zob6ptKrq7x5mIbFQTLusI8w+1QbsVwcHops77RduG+CIYW3/U+HdYID
	 ic7B7GKvSZ/6RNTGFmqCcCJFzU8d9jqW+7xB/pxOn7J+Q29VxzyDDVAgxabKqZfVbX
	 RQpY8QQrYU4PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6910A1E63
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455009358.2576.4056923327664199308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa80fbcb8911852935d24a53468f4802302166089afc39a878e5519fa044f87
Date: Thu, 26 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774550093
