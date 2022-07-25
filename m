Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A063366
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658767012;
	h=To:Subject:From:Message-Id:Date;
	bh=Cz6FhF8uyYUE/oarBZwhMdcU8+rTW+Vi5MJGIU4cAoY=;
	b=IBBw8XxwtEuzfmcDXC9rM0jOlTGnReQCMuTz/dYc+xyGPHDL1s2m3bnbe/nsZCGo
	YSpW6F6oKLo378kFCFfXPJGzJFU9T+ufWHP8ua4EQ968mTUbyKcLyAlikTfoqzbwPSN
	I4FfeTUKjsG0CCOO0LDkJMOesfwgKxeKiDo4iEbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658767012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cz6FhF8uyYUE/oarBZwhMdcU8+rTW+Vi5MJGIU4cAoY=;
	b=QUZLC+1PzNoVAekiFajxJusjStZcNrOWbmAUC0ztBT1y7DwFyCD143UkSqbncjhK
	SxoNxGXlucCTageYBwX5tk/WezAV4pt3axnfPOvBNgd0kvW+VNKR0UQu1HRHc0bQlwQ
	sddetqTtFzga7q4xXIkrefojUUQbrZmA2gwshsq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823637f1af-6afb411b-b999-432d-a932-fa9fafb31634-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a872fec45cc1d3059a7c049f05e8e560c833aa9d87f389898d11f79b889cf76c
Date: Mon, 25 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658767012
