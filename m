Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931F34C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646774485;
	h=To:Subject:From:Message-Id:Date;
	bh=byUHA3BUXXmWoJFdblvPbHYkcmTzSK+xiVcxOAc1XrA=;
	b=QKKRUPsyPiMLvWu36jmE7FXFmIFzAWad/R0ICZFJFc4qxvmQrM2rTGM1Dg4TF3WM
	wH3Igyd3e1lkN1NZsIm+NawWjOuU7l/c/6zpffBK2dR3QzIfsx0aoccpXD7OBzhWal1
	71dNc5RjycxfXmrqH/KPpYWi69wajCwRRTTWYbMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646774485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=byUHA3BUXXmWoJFdblvPbHYkcmTzSK+xiVcxOAc1XrA=;
	b=itd1bZe8lSu8qZWkZGHv1rQjkpLcfRWkJ8pN+ZuZ2KiVbl7zAYiBaZMv4L6xcvMR
	hqbA+Yzfw8H8qKpM4apKyNRIMGUfUnibQrq7cwqDsXDJ+vzXhtCmaz3sbs0HKcRyRjO
	urh9zMs58YzFZutH06iNyiXfmLQaMfW/51NBTWsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b687efa-5eff1b6c-9840-4cc5-a4b9-8c20f0eecdef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99a30fac15bccd33706d4c87405cbaf6edd6d25a19df880508aaca3d40fe8cda
Date: Tue, 8 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646774484
