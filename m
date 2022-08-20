Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A7D7B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660962652;
	h=To:Subject:From:Message-Id:Date;
	bh=Hh5UMIk553XYZ3yAo70ycK3G513u9+ItzJmMl5dvdng=;
	b=BwpatUKHzITLqbwFst3DhwE/vlJVtMR58t5u0zFb9Q6cKNsSalfERmnT3mowwtzS
	5jKr5xQ0Gm3OlRKWn9druCibRr+ve9LrbP7AQMjysldLy5Cvwa3vfuiv02XbnBrvkZG
	pBpIDhcAItKOzxAM3uAVHIUHsB19QXIHYad0qKtw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660962652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hh5UMIk553XYZ3yAo70ycK3G513u9+ItzJmMl5dvdng=;
	b=DLHwRGjji0x/CDxXQ+7CQ+nK9YGuCMlbBuivO8diJmHPUMrQqcgfQWrR9qgyBAPZ
	KGQXn+X5rS1Lui6Dt+jwoDA4jdloFjyCPdFCo5A0xppMjXXWnNRfZ5sY7z4QJYz8UAC
	oDRCZeboEt6LKk7MwwbEVv9DQwRanSbp+Wys65/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b916c1bb-c51886ea-c72b-41d9-9338-231d3cfe12f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab9da6dba1cb9002959b4fd1b7cea75156caf5b1b9eeca11ada486b5fdff9ac
Date: Sat, 20 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660962652
