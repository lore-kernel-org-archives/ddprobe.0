Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B84C15A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647608184;
	h=To:Subject:From:Message-Id:Date;
	bh=O3h7DYHkfxA6vF+hRcYA5RXyTx6eO283vV+UxiVdauM=;
	b=fGz1/WMfteni2jVuFTxXx93mI7yFzDyAWYqNr9jhBKGUSX5+tIqutcDsBlvWVrKc
	4OlVXci+Lg9wvatuwAPzYdH21gsUcBncq5pQhocGs97F7JEDICNhHVNnw5LOWfmz2SK
	vTgnfsOMy91XKGUcj/hnAdaa5VCC3SsTQA5yMNcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647608184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O3h7DYHkfxA6vF+hRcYA5RXyTx6eO283vV+UxiVdauM=;
	b=LC701jFczd+xUZM0Nwf2qqBd4K4u2SolVsM/jvHFEsXTgisQDEkfuI6CuhhQwXww
	9+kQ1kGekENbfghl5jtcmiC4m3o30pPTfOlR1PcxQ2Sc/4SjF62NIGcO5w0eZXYOFmL
	6ZrlojVVyf/MqOUoc2ttYDskNR+BGhHoxJbs6m5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d19bfba-18f5881f-1435-4b69-9ce5-9db82f45d4e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e363fc0542856ef31943c475b43b8d7fb8255be9b33cefb3319e47eb37e8f24a
Date: Fri, 18 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647608184
