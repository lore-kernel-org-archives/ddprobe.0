Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A9A8F66
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 18:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0722C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694543048;
	bh=2ySiH181pmDJjoLUDd017yLar0Byusjb/euj/SyYw9E=;
	h=To:Subject:From:Date:From;
	b=dm2vWOZOjZ1VlreXFHqtiYykR5DF3Mzi26TExZOPEnd0zAFbZWxxE0NBeb+ZgiS3z
	 h6NP8bLh2pvAcYeZOYJX6eIj1yZ0mMrvcpYiT+c0E0k/f068nNQrkrnXitSO6s0Lfx
	 0LYKIYIgyKGTDL35aXifWJ92RCX0nEucrzy7IQvdkMWXFaRWRCeoQFjzsxLdPPvIBQ
	 RCqIWpdZBp3nS4VoJCWHEC/HNsYtW/9cwJg4izMMJy4M3HNwv4If9iw9KdIKhZW4Lo
	 dHtCKf++ncMjtkIdkRUvUFAyXTm3+ckuwE7YZrhi0pDXfZB/k889C0yeOOjVRYWpEj
	 hSGKvIew7h3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FAAEE3F09
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169454304867.8435.7074520858522951115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955963d1d0ed7d8e6737e544921e7ba6583f47346f023fec58cc66160fbece10
Date: Tue, 12 Sep 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694543048
