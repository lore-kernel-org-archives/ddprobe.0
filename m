Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2A82915
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659191452;
	h=To:Subject:From:Message-Id:Date;
	bh=Fs0gk+ujolQVNkNbq0qsmbokFFberua9FIilRWQm8QI=;
	b=OAJWFPfjAHi4EdalC6tjdlYTd0QGS6R8fbMiqmEISOAF7cIA6yyOlQqIiY8P9DQd
	3D4Nu1laBp7Y8AwztciGwbITGBVXHdH/Q1R5l64i2Ead70rCuUXY+NBoozPkV6tKGDj
	vxn6NdvcgQRw6zLj+bFxwo83o8PlWPm85cmTxaok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659191452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fs0gk+ujolQVNkNbq0qsmbokFFberua9FIilRWQm8QI=;
	b=XHYap8uUuBZtkqrCRdBP5HB74C/Zp1h57EgFKDCYpvUrcevfAR/8gWPioTXjFK7S
	zGDwdrjZX08N+VcUQA0ejR9Vje+KJLPEdhledz/aLZuM3AM4Vhozm+7NkYYJogU36P9
	aKVBBIHg7urI7CNp1W/7wH05r1jDDoZsbZvzk4N4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f8463e8-8756553a-fbb4-48a1-8882-943fd8571038-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac7ed2712536941fb4bcb7a45b3984724634acc3856b68c6995d1d2bd9127687
Date: Sat, 30 Jul 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659191452
