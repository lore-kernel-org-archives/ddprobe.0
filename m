Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3871B7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 20:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644698457;
	h=To:Subject:From:Message-Id:Date;
	bh=J2LZUG5V0xOy35G8Kohd9ZDCpud+HF1RBdsvFwPSo/g=;
	b=M9MPNiX3Gy9F+G6BPutPnkgrVM2NVrZthykz/f3v3BNKVwcRgkU+6Mjg/BsW9HCp
	hN/UsX3gZ+YgDGvYREUZ3QwXWtlCBd2CfY565QJkwjEsuKh8hIQda/CpQDslxW7HIAv
	8RRbWSS3JvSPHjmPZZbLupkCogBP3JA3ZYwpd+Hg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644698457;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J2LZUG5V0xOy35G8Kohd9ZDCpud+HF1RBdsvFwPSo/g=;
	b=WRyiZNgEp/zXCRE974pSu2GOvfPRfyLvG4L8Cf8Jrf0zW5JamEwai9+feuDJbxOy
	fHlDga0OqP0v/cgbDKcr+Q5Gg4c8LxknLJosOTcESmOUguKnMnQCwqRIl2jcGs1Qc1j
	TNrcpq+czsGOLD2v+LhIkO8dnUCA8ZwxqWCOPYT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefaad3f4-63b4253d-5d58-44ee-bfe2-b1c887119952-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d71f46ddaff21aa53508afa6e8d88aad8297fc77805711cfea5bdc136018d10
Date: Sat, 12 Feb 2022 20:40:57 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644698456
