Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3332463AD
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev2vgnLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93B5FC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699676296;
	bh=l9Aqye2R0JJY/WLU2wY6sm1Gh83vYbusHRS/lUcQRlg=;
	h=To:Subject:From:Date:From;
	b=ev2vgnLiEsvRxKqMsKcX4UeFN8wDzEr12H1/0PFJIdy21txQAHxB6vUZGVr88bZ7d
	 If0/dBTvup/2ic3kHXq22QHjmboOXoSbk3uXzEw6MhDY7h8pMAODOvfgWlFJCrgjmo
	 EuGHjAo5iLF6bL/oVC73RZFLqWidqK9WIIYmZTbTSPY/65hv1OPAyLRgcTgNBFi2la
	 QFrGodSAwTtvgsXvQnFZH9/ljieqXCH8hLLZvE0/+972JSDLtij6qjjxzl6lkudfVX
	 UFawBQ9YwE4EaE+tQqfWqp6xzs+pSWZ17q1MvZX6y1Z3hxXhT47xzZFVhJSBfNJyWK
	 xwNSavSbdRVSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA96C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967629641.22987.9919019377152626392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e162975fc0f99cc02b664a59665a64df625c620220572676094a8ea5df2dbd
Date: Sat, 11 Nov 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699676296
