Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539871C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660492252;
	h=To:Subject:From:Message-Id:Date;
	bh=VGTU9rAMGEHwrH7dUAgnjYQ1kxAZD/Thk9GZxU97dYg=;
	b=bn0JWBlmZHEtOqEhnoh5iyf26gChhJlaCGtoWiDjE9lrwvLQu6JqEFTw/i7hqooR
	gyt/Hw5kFU6lXMgXg/pqy0XX6cnLToVCXEC3M6ATa+/LOYQB4bRRofcRoiu3QSktnYB
	5x1m0B2Y9CenOqkofG5sv+m05lwbm3MAIwmeAo64=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660492252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VGTU9rAMGEHwrH7dUAgnjYQ1kxAZD/Thk9GZxU97dYg=;
	b=UATeQvJuzitbioUS86rA/uwwf6DeV7fkLrIqG5kwxWTwPHN5Vb5LXLc0i6YJ5BDH
	Wb1hzo8XtPA3lnrg0JE1cp93+/Do+uOYOTVJuQL3fnBqJ1HL0qEcHiVVT3mEaW0cBUS
	X4ivX13Fh2ZjHFdzh6dcNq1OVFtv7FJC1s8kDD/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d0d059c-3afe04a2-808f-4462-8e3a-2efb41234489-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8031a7927523ac3a37016afc6f6c768a2664f128562f539eb5d505d4ea817c74
Date: Sun, 14 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660492252
