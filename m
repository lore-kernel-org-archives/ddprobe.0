Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C1053A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658269012;
	h=To:Subject:From:Message-Id:Date;
	bh=/Ubah8ewQ2WsKploMn1vgPNV572l3bNnEG0tbhmBlt8=;
	b=IvgH8Wmwvk/gCKSKVqunKR8EEwSKno9/PRWMI+xwWKkatHPNZUQIlhZ0NJa77PVP
	eruUC+70cokTjHkAZnvz3GSV1VflkHSdhWoLav3VxgMBiclaLxkmPl8ZTButNxZANUg
	aolo+4/lzlXNtcwJ4OR6byRH8LEw7a6sHOFYkJ3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658269012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Ubah8ewQ2WsKploMn1vgPNV572l3bNnEG0tbhmBlt8=;
	b=Ib8Ij0gMEJgeSj9ey4mH+ReQ6yIl0JuBILOS5WrEY7I164sgTczd0sd1u8uFtOV+
	o6XQvSR8JqtUSeqC6vDM0aa8GXe9lqD9Lk4LYFEbhmwYhPrzgv9Ips58P8yHgEQ4BPX
	T2pScxFroo07mXxYoESWqCJ3a44YqMGXxXSUca4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218891121-4f1eb0a9-c701-4944-bb83-f301c19b7c9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 041b54ed17ccac406d6d872c50a8b326e79f3809df1889adcc6455c94f7761b8
Date: Tue, 19 Jul 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658269012
