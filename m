Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2FE93FE5
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68AB8C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663948253;
	bh=I1EfkWM5zmsNzqQBShiK4kEexEJuwDNNZ6kdPcbp+q4=;
	h=To:Subject:From:Date:From;
	b=lEHYMiDauo99E+jVdTGjBSwrA+iOzde6bo6s1trATovM95y3qPhYmdDSwFLZB2uW1
	 hVFpnJpt1mUXy9PRMi3bRxtg6UVqR5UIeZZaAJpwIfTozHB/e2+p/MAJUxJ0f/YsJP
	 u6F9bmfHhqiVjnwAOAjtovejDhKTrNfaJvx+qWQ3v9OM3LMAgXHSZFfOg205FG2ms6
	 sOZNB1pO++u+npAUquRKp1aPx+HyjGmTpxiBkwHObHWkL1dQJ3DW4r3STnCCI78NfW
	 Zi5UjRr1cM50R2e/YOO/vM6o5YSBxIrf3a9gXqMqMVullnEgmCAAlHtuRjfO9f0PWx
	 TmbS+tNyUQKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523BBECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166394825332.20808.9647931519549366347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f67dd1f3d63cdfbdf64a99b9301e6b706b402f4abb64570bfd3f32270bb4c42
Date: Fri, 23 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663948253
