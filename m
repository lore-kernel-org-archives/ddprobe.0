Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD5153A4
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657579612;
	h=To:Subject:From:Message-Id:Date;
	bh=c4jLf6sfXSGlPRj34c/IMOGaNwaisoAQEvOVqE1+Q5w=;
	b=GgnuyJhes52la1P/iP+/otZPUtwJasNKtovnC8DptN7rCA4FsALb4wkAMyeobiKZ
	waOlbiHTo6gTB5HqmgUhw8tioKNzG/JTC4yUbQB1xhUn3tse1Ah5fgNyB8aQZwVCcNs
	H3zRYFMmspqHsbMdeSJ1vLDj7v9N7027yQgPFa3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657579612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c4jLf6sfXSGlPRj34c/IMOGaNwaisoAQEvOVqE1+Q5w=;
	b=cZu8ctJw9z7GvQSgcJgqtFVlRiQ95ysAyFXJ4AR0OZLOzLCQGp/CHCoIKufiv/W5
	Q++pV5KylNhU5YFyUtv9xZP0YMMJ/pmoEd/1gDOolD3k5mKiKp2EG0suJNf/yzh/Q0l
	cMMaCJHuKbciJv8Uu0UAErCHSYyCC1NP9OmLa31k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef71a889-225b2487-348c-4db2-bea3-ac4f74a312c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcce5c300cee39c2c2e5409377f2fd01342a797b679b3bd53a88b5d5dbd18a46
Date: Mon, 11 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657579612
