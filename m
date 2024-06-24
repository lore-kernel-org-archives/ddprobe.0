Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F194413E023
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719237143; cv=none; b=INAzrMPi5L+olprYr7k/jgxe84g3VlvDJl21JHXPusnwjP1UWRnfNyGmthE4SU3oQ1Na2E3fO/jMZC//lrE9tKVVH+9p2tsCGKGtiSgRLgFi0Wflg3YWn57pIDhFjn89DXZMXRmhqz3PFs1H8fCthtOyH5wLWpFX+U1blZxH9AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719237143; c=relaxed/simple;
	bh=9xI+GN8Xh2Bbn8MXW+G9n+T3ZaNa8KiKR2aVZGTcJRY=;
	h=To:Subject:From:Message-Id:Date; b=ZlPmAT69zazZhkJwFIzvih0Mn4esVrhvyLmcwH/2ICmRjIwalDgtOOX0cEe7DfSwp6lQtEiYoQXOLnHLtrKWjzA67WMzoCLFYgKJ58JO3xT39CYQTjtbRSljTeZGkTtCh/H+BnVDK8ZU2IPEa7Ji/vjdYgv+2iH86RzYF4EjLm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbKL8T14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbKL8T14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BF1C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719237142;
	bh=9xI+GN8Xh2Bbn8MXW+G9n+T3ZaNa8KiKR2aVZGTcJRY=;
	h=To:Subject:From:Date:From;
	b=VbKL8T149xxRTwQLa9vm0woK9bQwbma76/Lo4lCkVwGt0Eu0V50akHAHvAPDvzWWF
	 YONbwY52W3Cc/Hqzrc/P6ArfCXLXVpn2knuTEwWIIkewsuySzpqby6iFZHfd/8Fh8q
	 MoDYaPROD5UNQCC56busp9OJbVu1+W3YjFdDk3VY29tSYIWZK9RMxGk/6e/WyRwZBg
	 OvePAaWiHkUvjMldzFb2gDbZeCy+wUA30Su+H6PBzhWGqKME3JNChkP2kIe6kWSlF7
	 3krGAPu2CW9BV1aJpt9nWnkxvxksRhVskEXZ10BtgiNGs7ajwkarY0yfHnHNsIdvd/
	 N3xSwrelYIoYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31E0C2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171923714278.10739.7380558494873424600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1066124600e83eefe38487767ab61392f0b3fbdc1146bced6e86ffea29be2728
Date: Mon, 24 Jun 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719237142
