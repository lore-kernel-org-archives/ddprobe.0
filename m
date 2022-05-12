Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFF733E5
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 17:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652376239;
	h=To:Subject:From:Message-Id:Date;
	bh=BXb7mAgqWV9vnd/ZXondDj/3gAoycyWSuY1j9u0s9F0=;
	b=etkXKoE0SRC7E1eFtlSMEYZDhMqSGRb7+RH3s5jqD73XrnMUyUCgNow5XOQcbs/x
	AlRu18XPvq+RgxeMauZuicUH2WVEsMAJX/RrIxxHnPFeq9o68X33Lj41yla6K9yJFTb
	qBI8++uPHPNjGp5nk6oF1VwS85njGg6xqZlqa9ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652376239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BXb7mAgqWV9vnd/ZXondDj/3gAoycyWSuY1j9u0s9F0=;
	b=D2+R/3VMQKFfnD9lg3q/3qC1rzMRG0cpQIzsDP//jX6vZMyVPjRV5A9InA+TWPCZ
	efqMzHEzI6Zb5ZubobqmiPjlr/oLETVBoZJ4Hxa/krxvCCYfMzS4QlK3JtlNOq/iBO6
	6VOBXBdWV9rm51Nk//CkvaLOwI1KASl+mC6bB9/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b94c7cb6-826f8650-cf26-4356-88e2-4ead31bf7a29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a48bd4412639262ad56080be457ec3f6fc904064f88858fd311ca1a0cffe2fe7
Date: Thu, 12 May 2022 17:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652376239
