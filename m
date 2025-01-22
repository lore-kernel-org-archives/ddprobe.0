Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A59533E4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737532554; cv=none; b=mYVsFk0nY4gEYXaTqH3sGT6kMIF9SwsZSRQB0FHjirNb/4jMKPxaNzZcrFjCtmAtzcufTNjzB9bE+/Z+jKLgXZngKGAOjuvnuGw10ThZqjPujhTlKbT4eqACyEBZRujbJoAYlrHO4pj/cIaigM4CZM/GUkJzhrQaM5mAdmfQzoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737532554; c=relaxed/simple;
	bh=g9nKHnmPfYIdb2D/vXjfUYOhZ2S++7CWYFfNBCERLBg=;
	h=To:Subject:From:Message-Id:Date; b=XAmZlN3sF5G7rbUtAX1C4JGHT3YugbUN46lzxlels0oYEcCY0oUo2iJeN0RgzxQTucsELQvNyvKjHD0n6WUVe7jeUQp2Tvi1LrtUexTz/cpMdAegd/fP8qMhk5v8QyQQsmCEFSVopnBX5d2hDDdRFWk9GIN6tghZPNj855p87oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+JmyDuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+JmyDuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153AC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737532553;
	bh=g9nKHnmPfYIdb2D/vXjfUYOhZ2S++7CWYFfNBCERLBg=;
	h=To:Subject:From:Date:From;
	b=t+JmyDuHh3fvxEMbnDIQwptkWGVCcptjM+DsJ4cpQ6oE0d8rdwaXDZlELxlCLDBmC
	 MVRX8rcw4+ZJGRGN2dG2SdQizMOYIhQtI2S9RnERMeKPYcBTIaHpY11JF77xP2FZk1
	 yvt++AASL7sysLVOkGrtpc7aykj0OjkVNcbfSPN8XL0KRlhHQ1Nm5+X703mWd5Phue
	 4sXhcXapMXvoQYSvxvDI2/OWHMS20jr/cwfngvhxIM/1Qfxw1rQXOQlelAodpfBkbw
	 vvuq1jIw9gE/MqvB+H0Mh7TLGlxkH3KWwT0AEwgEIOxa56B34IDVzCSfKKMI6Fn0GH
	 zYitsIJWiwaLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB8C02182
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753255358.18051.2695038454368966667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848da3cb4483e13344f28c28ca0724f38e7ceee291c2a168f3b4a0891c0be33f
Date: Wed, 22 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737532553
