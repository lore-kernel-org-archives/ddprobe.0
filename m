Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD822443B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF62C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668779454;
	bh=wTKy/8H16zpXBMB/fU5sTJ/LTS5PaEUKo7IpWzhneh0=;
	h=To:Subject:From:Date:From;
	b=owrqUbyLtcGAJ2Jb8I1Lxvoa+MesU0ifT4RlIq/afss2/jXwYGMaZ3AjYS6RcUb/b
	 1h23Jqw/g6yNeOdkpvGpnyB6Hqpq3Lq5j8cQ6T7ioXTf0MfNqRu088ALcl7KlVkfjn
	 DeWMT2vvN4ABvfOFkIiLH5ZyjAs36JHn6NJldjFsd+WceJDTQ8hfWLYnZd8gHI576r
	 AqS4jsLCV/f7NMMaFmckjFIDDbKkylMeHGiOJ5wR8+qs8N5ahHgxXy/ONVJx4OeAJQ
	 ltTYZt8HlDYhbe7bav3RB2sxD7UpVschPHl5VocV1BATUFH02o5LauU6UZ550yVJoB
	 ZD00K9DOm5fBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A8DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877945433.24150.6642657828237156541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632eb2b050b5935afcd2e0dddb3e2525b477149db47ebafa17f15ba8ccea2ae6
Date: Fri, 18 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668779454
