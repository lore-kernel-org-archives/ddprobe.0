Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0E546BD
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B18C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677686165;
	bh=0i/AW+9mmgKsNzvUDC8YQD8PQ/kDetQ4iMORvonWRHI=;
	h=To:Subject:From:Date:From;
	b=KmGl3Q2Ngtfa0ZNVONWJ5Fpv9LN7+1vYLNpswCGYtqMvsTXlxr9sMStiIiuSoQhGW
	 wEnNH3CmlmygpNd2hH9X5fRey/Glyy7yl1+wLJepSaWGTNkMDQOfMQoE3pwu6WR4NO
	 aRKbdOLkSguJSRlGjdGuZR/4cWaMF+/cAp+aGRE1cjY7pc34ntl3HwQ7sy8QK/g9h4
	 a6KTYI+WgtwixIwV3MP5CgsQ2//KSiLx6H0WK0A7dAtf+62ro1c7j172ywHtWvqDLZ
	 4MPC0CnHlY7o8uBVd1wFgMUZxiR4w7QAoWU2hStpFBnNIN8VZt5XH88l1csSdfX0pu
	 XKysrZ1iwVr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BAAC7EE2F
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768616574.32062.4903178262532346765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba5c3a3af6eab47dbb035a4ab78cde560a048dd77c439ee08d1325e600380df
Date: Wed, 01 Mar 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677686165
