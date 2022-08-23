Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF64F5CA0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661281853;
	h=To:Subject:From:Message-Id:Date;
	bh=ImABjrH3S+4y55Ra84rwlLr07MlotzZK3rRt5tOh+nI=;
	b=Su78q1r2E5wUWz9M8zYPJhGquiDPgnXSYlSktmeCdlRsgO/LT9PaWaUq60otg5pH
	XAqDXKhdwRE/6y2XBG2fCoJA7+7hKnUFJkeLP7cKDDMojEFBxwSKzAXcHkjqldpVA8+
	xdVN8VKickotXxP4zWUT7Zvt/7x8qBJzVRuPuNTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661281853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ImABjrH3S+4y55Ra84rwlLr07MlotzZK3rRt5tOh+nI=;
	b=hJzfMZguhDpLs47BWlqiWS7rIitp9tPELgsSFdSEn06b211JEoykDmGdhQa7DLLj
	AqU/cgiwPsApBs/mXJJ/wCrC7y4fubcqag+3qT5Px99cW59IO+3hDR7qgD7vO2vhZ9C
	rRdQZt6OMjyaeWZL60P5Z7U4evZI/P+F1jNpJlWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc1d5c64-dfa96463-729c-4b64-86e5-ead98e327774-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b29afd717d8aba9cc0f5e54c88cf8bc05685518e0019487872d1c3d11b32f14
Date: Tue, 23 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661281852
