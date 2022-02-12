Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92DA47A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 05:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644643841;
	h=To:Subject:From:Message-Id:Date;
	bh=959wtfUJnnAPuWxzCEFpnLMTOkeflHMjtnZROemviTs=;
	b=gjOxrGXU32Z762E2IvXacN8yahWhX9SuuTkbEmwODKD0FW8o4tY5Avq1lHxc3ocE
	WYuKrVX9wp7YpOsezz2gky/IFSv1Wv/BjFu/EU2cfXCAOVX4wWV0BeplZMKKe12YUjW
	jt9ADw0QtMPz7LLYMWGCZbMctjwy6XsvLjSWfxGg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644643841;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=959wtfUJnnAPuWxzCEFpnLMTOkeflHMjtnZROemviTs=;
	b=BVRbCOEuZR3ymvKAz8CDUfBFWlv5xalrKVaNmt4Dn5DPaJKB2cegVyuUguiY05Ch
	z4Dv0zJdUIeC7ycW0Vn93I7oXiBvqlSVsH+42vpOV8ja9KTnMThEDPC/tzPUL10xK+i
	E7ziQU2uBpecz4gug2zROlvCZseM6TEQrg8tIilU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eec6976af-0c4b823c-4733-49d1-82c0-0230f6067306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79bec34726532629a20227d3a66b68c15476711750e70be593c9c36768dc39ca
Date: Sat, 12 Feb 2022 05:30:41 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644643841
