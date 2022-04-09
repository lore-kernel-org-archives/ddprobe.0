Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE7C7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 13:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649509678;
	h=To:Subject:From:Message-Id:Date;
	bh=tTyaEh7x6LRV8+WpTUj9p+FdCY+0Gbs5RmzxYFeWOio=;
	b=PFF4QeKZwfBbWFSgi/IpGgt1NLuT0jbDKeESRjfadBkruo8ZrDwegIz+qeiIkNyj
	YOyOnbqfbjB6udrj/sctrO+B4YWSOI6jda50cYNLLiGAaTLDyb5h66KwTKt1FJrjhdc
	WzAvarn/1KMV6mMGCuOhlsJHeTE6riqIlthwljeI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649509678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tTyaEh7x6LRV8+WpTUj9p+FdCY+0Gbs5RmzxYFeWOio=;
	b=DJMgO7H9aZOy3vLIoLUOHKM8cQT1N1Yo/V5JJU6XMyD8cTe/hqiCRfkU05ErF5Eo
	tQBWX3wkm293a09m515i/94h3TQtThqydJ5puWw8p4KjzdBGu+WMKQzZHFZ5/EyyKY6
	4BtzsXtrC1TpeTRgwmu/9+8K/9lyvU9rXKtjmIqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800e703cd3-8be6e463-6073-4ba6-88f4-a6acc1bc5c53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2a64f147c9823c6e57f3421a3699e3a98a94e72b9ee7aade8544919ee735972
Date: Sat, 9 Apr 2022 13:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649509678
