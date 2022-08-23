Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76025A20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661224252;
	h=To:Subject:From:Message-Id:Date;
	bh=E4hOOaKCKyfN2eEAiAfg1T4ef85honbKc7r9sdcZpr0=;
	b=bJeB4jXucoOfhKtawmvmvmVL164NcLFb1V/C70fXpJAJ3MJ3xN9OnOEdBHHZQx+M
	XZ5F4NH8vVLbjzRwuMIKQQIjqNv9SMWPOvoEMUfHa2Slu6Rj9DzSz2tHAcO8Noyq24N
	2Sr9XS/u49G6u/c4myzl0CV2jc53i5Olg7f0MPHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661224252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E4hOOaKCKyfN2eEAiAfg1T4ef85honbKc7r9sdcZpr0=;
	b=JuDuJoRdjZWdpJ0XMXpMnYuaJMXmqOoGXOibetSi5ZeXSB9ALQqcASODW8EmRP/Q
	yPWijYYOsHHfKv8eJTPeL5JoKdJg0Vjb7BJI/SPy47GyHoK5wdP6f5JjkxWNa+Dixmo
	0g8DJh1msAiYhYxycRshsthICcQEVPi2HK4jgc2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8ae7485-88daf047-9d02-4776-a7ad-c5dab5f220c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 674af3ce72bd6313bfd5443c3879c3ed16898f60adf325597951c093c0c10e4e
Date: Tue, 23 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661224252
