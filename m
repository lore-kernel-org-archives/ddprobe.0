Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFE610EA
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 02:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653530759;
	h=To:Subject:From:Message-Id:Date;
	bh=Fa4yT1E/gJxb1hWLwyQrvoT3rRuGniK3uRupsaF4sis=;
	b=ju+4Pyv0wR8c6CHaszGOsW8RBsrj6qXCRG2G+ryS7S1WVpjMidXtIkK7+npuTuzS
	tXP+2VAwcavZsAJ69kH9wJETFChICdiPQRPibcvjyCNqM+bPgSdxI8NY0U5uWogMKIo
	tcz3Y6Fduu3FfEQnZ/GkcEaJXfZSwRhst7AH33a0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653530759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fa4yT1E/gJxb1hWLwyQrvoT3rRuGniK3uRupsaF4sis=;
	b=UUoEUaIwX0mTmtIU8Eb4l1XZsu3lzQWYOOQpH1MhaS+L3JwFuvqyMN929HjF0NJ+
	F2IEDoqmXUIh4y30N7T02O3yDpgVWzxXmpwkaxJ/V8bzoXFaUGqrT8Vg+etyjcOxn0D
	4ZIkBtOEMAwmOkPjHXODTqXffYHf2n+1qCQUPb+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe1d1077-2d023ec9-d951-4bd1-854d-500179c66603-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 360b9e6df1757099eba007563122980c12ea2063a859ac8449a1b3a5a1a4ba1d
Date: Thu, 26 May 2022 02:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653530759
