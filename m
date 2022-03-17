Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D52B2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647478584;
	h=To:Subject:From:Message-Id:Date;
	bh=0PIHkA1jAlfkGMrLHEs4g/AFJgTjKvWaZi7R6gOZ7kA=;
	b=RgkpIivvkfiaLuvu1eGIp9UEKH3jStk/qbdanduAoq3U1iPewDc1okl+rmOjnYyV
	yA+r3biSWg+6TOP3HCGfgSyNQLTNqSIPCrUtx6EPpDwDYLL0V8f8HrtB3XiFQzNGHwz
	OOl6y1wSI0Xr9CY1G4lIkro3uKUWkHmo16UU0CVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647478584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0PIHkA1jAlfkGMrLHEs4g/AFJgTjKvWaZi7R6gOZ7kA=;
	b=ku8hfB8C6mM5EiBWSfGhqbD9gUt4Vv+kmacVTBtJ2sG6v7Gh0ywnpqi56bb1INgC
	3laJrWZ2WiGSkM5VQx+kDa1mnX/Iy+wVKO84q2QCIRgwuhnzJdJEwv0L6qbA0MEldDM
	/JjEkv8gTYVYnLbD61NallAnnlAk/+JQ9z6hNmsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f956035d9-68ca9042-6a7a-4ab9-9d0c-ef5b02fa7731-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f71f3a5176716fd8982591d2be58a8eb30e1544a3c72365121bb9b918a75d78
Date: Thu, 17 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647478584
