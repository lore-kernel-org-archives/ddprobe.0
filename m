Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1152015AB
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 02:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653101579;
	h=To:Subject:From:Message-Id:Date;
	bh=AdNa7NVNGwpPoRDr0dHSrSsnpm8DE0fjqhoodIdaIt0=;
	b=Hq7wB6yDW0hTw1L2qF2dbDrlFY6pRKInNyU+uHbCfjGzmxiitfzNEIhnWX+cE9zP
	wKbKiLaR0k7Ai94i2ErKq8dJU0vaXt0xQI4brnt60rJuvEokqimMZ2DprvoAMpXErg5
	6MSQK8X/+S7p6cYBVdLZnCkynlRznTL4Bk/9IVKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653101579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AdNa7NVNGwpPoRDr0dHSrSsnpm8DE0fjqhoodIdaIt0=;
	b=igdRgcK+j6E0Ok896ptyZa3xCny3F8/6hKp5FboF26XCaFPWbjL0LnOmnk6WBrVc
	vpQC262oyGGkrEbPoA0IAo3lQbEgGWPVmTVaHpZrSrIoSyGYtvlpW4n4WTPN/O/Jwr+
	2pwePKGj+8+qCDIR6QyIPqm0tWpy6qlky7i6Hmws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4884c05-2d0a7be2-f7cf-41b3-955f-4910e9c2f03d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a3667798bfa9e0984f42b1b20abfa83438b74edb1c601fca2dc5698f6d846b0
Date: Sat, 21 May 2022 02:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653101579
