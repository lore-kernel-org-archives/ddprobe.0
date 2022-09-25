Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19C829A8
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBE8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664107253;
	bh=zIzHpq1ROGC9C/YulGQqe7TUD9IrDX5Hn4YPRgW9J0s=;
	h=To:Subject:From:Date:From;
	b=Ahr7ILqY19QWtJWjcUm4padZV4hmDJgm74ySlRvaKqhEuPfKlBD3owGUQj/8goMZW
	 bA2QWITSgsZgrqPeKPYKArlAvgaQfg3EPOKj5g8XKGHY2r1ggP7MuuJ31dIqCyOBQV
	 cp1iFl15wiKkeuvpChVwGcnZ+ae83EhVg/EluEGcD9wxiIh6EbKzQ6byrLHgxIYV4T
	 kSaHsMy/RzIpAoBfwdbyr3WdKAwYbUNVkYmebEe3YEufMXGmC15ng1ivwjKDNZbaN4
	 erm9+ByyxUGNMuwuf3NVVOxyekCVF/0/TZ7iDKhYGHbJ24MCASAFSZe4W7x4idzO0N
	 nZDkmKi5wW8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508E7C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410725332.22346.7854618778530230002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc0437cf31142e96107dd6d0c0f1889933b1831b8a3031ebe40851a1a57677c
Date: Sun, 25 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664107253
