Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE1B1FAF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30EEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688184848;
	bh=Da8d13QHMR32knRtGZKQA12+fq7aubtnl4xBP2VWgMo=;
	h=To:Subject:From:Date:From;
	b=ifTXMXufTUeWR1FepK/ttyR8KO7awy8Oj82vKRsOPhXaRI8UWgUWWodV2FOMbA9n8
	 14lISo24t5md/oCRgaWigSomPF3N13D/n/FWFX75nEb8rPv5mqtnBaltUMYgfCyXm9
	 UTYX8Jqeh0Yg2K/bCyu8+JyUIx3bG0CAJUDeWn9WTQ8p6olLjppU3Cx677RXaSW+Pp
	 7gE/fWHb9wmQZv47PJd5vruvoI/hJPqO1ihaC7rFGudJPomPIUjArcce3qbzh6Z6z+
	 lWIyf6DCkzgSLnctM+nIT1at9BR+xCkA9T/7WauMquAK0iJ7V4cEwgj/jSB2eiIbEn
	 o9YGP444yNVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDEAEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818484870.24463.10867292561316498700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7852578e4e671cc8bb12842b4b47fc7521aa8d688641017c05f3b7f883318264
Date: Sat, 01 Jul 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688184848
