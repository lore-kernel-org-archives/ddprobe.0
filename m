Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EFB7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E65C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661855453;
	bh=EBFzvt2MwGS8ckMoREMfscr9hj7Ioud/JLf47JJ9nkE=;
	h=To:Subject:From:Date:From;
	b=uGgJQhspUxERMd6pB6iGWKIW3c8EaFc6EgfqDGrWK8zTh5lnsMuW15NL4l+o39Uzz
	 JhyWwHXxixBAdu6Avw5WtZskCof/9VuSOazhi8OqmHqH7gD/ElV3VyosoxCf28Rxmz
	 wuZ0yC8tPj1MsxbRia1Tor6Ny57lr7yzpjkcKNIWmtDqgxlSBdpGBNh/nvAqRtLJwG
	 B/X9EwTXqTmOwtO10hx9DYdZvPr0T3Qf8/KHFdBycwG21JARB2DVi5kB8qBvS5BUUn
	 KqaoSqSZLCIjN9NK91wXK1Sn5zi0TJ5v1k2xWAj43VSmlMcrwDAWGrlyHOywdwltIV
	 V2zunlO1M/dig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567BAECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185545333.25249.14781607489839027634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e7b8286ac1ec724d7f96f12c4b332ab0003ed0662eeab9e2ebee9eeb510f40
Date: Tue, 30 Aug 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661855453
