Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6302C33E3
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 20:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653249779;
	h=To:Subject:From:Message-Id:Date;
	bh=OFZPe3+ZkZxrTcIARDP2zu3VvqU4wmTudEX+OjvzaLw=;
	b=A2BvmO8hB7KWGp1HiMGMvn5JbHI5p9jsiix7H0Lwpr/2nRxvgmZg7cAya5tLN9d8
	ZRkG85ZDwZaO04t0bOC5yMGEMeK+qmDydMFXhSqhA1PHacedDK/6qR+dJsEgBeGs3Wj
	eWYgkdO+XVPAY6kBZqC21dydAjJohEXmnAOhmB+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653249779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OFZPe3+ZkZxrTcIARDP2zu3VvqU4wmTudEX+OjvzaLw=;
	b=LnqNgR7OqDoe4wAFc+3f2YJqKbt8pQAOs7Tb+Dc87oGYbIGusYZ38SJf3+ZEwsna
	zADsT2K1b0w3w+c8g0M6P0Pl6s9xo5updgjrnGOlPDWX+tcJLF+NqKTGtlPUj6/yosP
	LhazDTe27U0jfkqoM7CgEiZf7+2u2t8B3kyihltk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed5da63a-e8d3b211-ece6-405b-b1f8-93e04ce1a6f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfdc18b70aa1b8c40ce6ef91808406803220cdad1fbc4de7ce9e862d08d8df0f
Date: Sun, 22 May 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653249779
