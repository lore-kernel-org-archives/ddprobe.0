Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D85136A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 11:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654343039;
	h=To:Subject:From:Message-Id:Date;
	bh=hWWA6wSYpktkr9yM3u52eb6OKgjeT/7xVy1hdR2PC+0=;
	b=SPZW7NaGl8Mmq/3WxKmoGlr3E5d6iuYAEkGhRSds8h3F6w6fb8ZfZrXMCAk8GEl1
	x355A7Us4SmRFKcwoJpfZa5ocfSn33kHmB1IgE/q6ximXjLVX794+KdAsLJ6L3cyExx
	Nb0g0szfjq0wLx4wxUzvpVGCkWLEqyX6PzUlKzrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654343039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hWWA6wSYpktkr9yM3u52eb6OKgjeT/7xVy1hdR2PC+0=;
	b=QiXCgYlhW6BiLK+o4GyeUpnak3dqHqz0Q0rihrCmdJay0QouLr7um4xkFlyniz5N
	G/+vNNb4urjiEhUbhakU/dzhK29OawFABALnqTkOHOLTFZaWm6G4vpE2spHuj3VJwy0
	Mb8It3KH4OzDjHZgnthkvhLR8yUWQeDvVto2FdT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812e877929-4ef7b394-00ce-4dc3-ad83-f96c480dda68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8e4a4729bb923eb3ae24ca6657bd4962dbb6efaee387cf4cc6c61fe07b06365
Date: Sat, 4 Jun 2022 11:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654343039
