Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DDE7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654376999;
	h=To:Subject:From:Message-Id:Date;
	bh=SUTBBuxgi/S6PAG+fM8MTfOFxaiCdYEft4t+LTd9iBQ=;
	b=S5AhfRkHlQlrGqoZ2d2LkqL9Qxc8g+5OIGi9vj9KI8JnyyxlGVrDaQ8j6zHs006R
	6bueFU1fbCzyzvtyIgTHiwQzKX+USLpvRQFJ2+bKYLMG9la0dXiD4WJW7CEii32InXq
	mPqy5YvzVSoPpGedw0hKJCd+fDrpOBRREB9xXfVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654376999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SUTBBuxgi/S6PAG+fM8MTfOFxaiCdYEft4t+LTd9iBQ=;
	b=YjundhGYsOGaY38UG8oVsYnxrizJiAyZkk2JqxEhqIrdMDshpdxWy1KhPLnH9Iq/
	RnLLZGG4jHarhrlrsQKcvTu5UDrc6U1079uua4f8cUQAJhWqQ7xTKBZdK5rSukxvqDv
	RtjD6GZObxD9nJYb+XduXS2nOjni+bqtD0aqKsTE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181308da95d-266ebe01-c2e4-4093-8eec-43841030d754-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a0b3fdd28c61e9190d0631e75f4f13a004b142be523d7a33197b76cc428dcf2
Date: Sat, 4 Jun 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654376999
