Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3994E1854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 17:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652808599;
	h=To:Subject:From:Message-Id:Date;
	bh=S7a9LmxQcq5szh3h+jRbIxIj5ljIZmGnRqXnNace8NA=;
	b=Obba5SY81J1GASamAlNjybL/Hispjg7Ar8A/uhGbzB0zXjYnCLGBXlf+t+LdSRSz
	Q0x3XZW3r2TaC7+raMB+k4d+xWsiSKtUsnyeKd4aF4PdUp3InBk4R/WVnKJiMsj0pk/
	D7MX00OQ8jkV5jj1M3yGY1vrQUjN4Sxiqh91HD8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652808599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S7a9LmxQcq5szh3h+jRbIxIj5ljIZmGnRqXnNace8NA=;
	b=S/PH8vqLTpvKAmSPAikR5O/9kFVsF6y+IItRqwQ0dJFGnmJamp7c/xgJ697PEMhY
	bwnueDFk/GU2a2so3d8eVLTgxURms6czxyxfRwEccUzvK4epHB0Kc6eU5fNetXK97lg
	rxKkI9+Ma5MY2UP2IcmJBlDYN0NnTEG5siQcmDbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d311c75b-f325975d-2789-4840-9bfc-657df8329621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75721ec8d0c957eef13612ccd7118fc6b26fbf55cd6618ffa045f44679c04bfd
Date: Tue, 17 May 2022 17:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652808599
