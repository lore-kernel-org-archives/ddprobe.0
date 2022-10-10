Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCF52565
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E29DC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665396053;
	bh=N0D2+szGogdf/kTW/Nq7biKMX1Ux39TJNrJOmzy95+o=;
	h=To:Subject:From:Date:From;
	b=lb2O9gIiaf+CooT9rghclw5hOfxa5EueVM5YmjEN2IiYVqZsMtPlfJ7rpu+I4opj8
	 y1Ww3uvdgoARRfQcj/vWtXobiF6XzINTt6eBArUBuNDgpDXZQjE4scneUOjwnFavgq
	 cYzqN87s86tyqmccVEfsruyto+0pB9ZOFfT1dWUnUfR6046lpxkNK2GlKEVl3c2tlN
	 MacHngkrnvV6ff48ikQrKWDPhOYpUqDq+/7Tj0zQiyoN2+EG7uLrcL8OsP1dpZjKZs
	 gtu5RYOAH+P3DmwNm281nspHg993RWCyXF1yAYamIeX+W1X0yk8d/Mxitpo9P2uGyU
	 43XtqOoqftHoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5234DC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539605332.10602.12098158533385818051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b16d0027084f3f8ac6457443dd9c096d654e15bc3e43f064ae4e2d0b2f9579e
Date: Mon, 10 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665396053
