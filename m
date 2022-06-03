Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3BC10E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 15:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654271219;
	h=To:Subject:From:Message-Id:Date;
	bh=Yzn//ZCmV0l3Wj+nRF15FktjjqOAryIb7sEf4FdFZvI=;
	b=cOtaeB4XNfAxRLijfJOXRR4Dt5eI+7WyVuYyvK2oyWTtrIMDaMZw0Wl7jw1TM6lm
	RekxUKJEpM/V0LMIGTuzDaFO7w1s79sKF9eSZ5ax35Z2rzoHHn3+nlm9INn8Czm1XqY
	pm/+awTIkc3R5w7c6Tqt5DWdYzYgWaMR+AXJteSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654271219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yzn//ZCmV0l3Wj+nRF15FktjjqOAryIb7sEf4FdFZvI=;
	b=CkK88a1lwx0va3dacEkQbA7oOKCrdH8cNmupMXP1eWrRWSNfGpSkadgRa0lraf9+
	415uTK+OOOhTFvgHjG1YlZDARCnQfRjUWyFztlz1gNol2LjXHP9bYZ9v3/EJoOkQBCx
	GTTnIOG0HpQi/xKHa0fkFsM0y0qXIiLV69XOgE0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a3f9666-e40e6da0-a308-48f5-aabb-b31cf893c0a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f240ab898b23c1784425242fcc312b608e77b5c3ab4bcb29e84ff32b2f64ecb2
Date: Fri, 3 Jun 2022 15:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654271219
