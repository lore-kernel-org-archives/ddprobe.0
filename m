Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C752C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C651C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669632054;
	bh=fYQSRCGcPaTwht1G9ZVa2cvxBF+nXl+EsDOiyPiM2mk=;
	h=To:Subject:From:Date:From;
	b=X4gjMZxzdiYxhoUakKb7Bvwko0bB1cRZYSFZKAxNNg/DX72PlklK886tK9CsQAlgc
	 QhfM+w/WahQ3Puw7HOYlkGGFHQwNpyIdLxxkn9Wm/zy5JoF6dPVOFkHLoT8Ki0HD0M
	 74g5ZJowNXx9SfWGf1ZW0wcKEfHxeDn5n1sQgapVTcT+vWD3dihAxVWwj41NGLcAp8
	 yZK9tjdjYew8U2wWi6ozZtQnaqvVTuOfHdEt3waIR1j7E4FOf4EjlwXb4+MB2hw2z7
	 J6yKx5DDwo1096h5ieXrOf8kkPdaylIEihAuk4x0fItw2LAsGIw+4IWXme4QPy7mWW
	 NMLISE5mR52sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DEAC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963205432.19982.2653767074794961975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae26a87707712ed09ca7eed55924d982a49263f4e31dca356ea1e50061335ad
Date: Mon, 28 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669632054
