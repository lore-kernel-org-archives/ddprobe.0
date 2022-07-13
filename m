Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D6815A9
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 05:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657690012;
	h=To:Subject:From:Message-Id:Date;
	bh=N7FpAeA00MTR1UMM6cEsHNjPw/DnzjqTxwrLXNjofZs=;
	b=JAnwngnRZBtqze1UwTrKhHauMqdgysa2XotKL3t0ofsCDui2yKYU4AhSdJlIi1dQ
	7MIb+9jMwApuPngRm99JaiqzBKxMbZ/ef7yo8pxmTXtGd/ePivXvCx9VXNlJHk39xJV
	vgRjN2ywMHNp+886j/L8u1JBTgbciql2yad0hHXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657690012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N7FpAeA00MTR1UMM6cEsHNjPw/DnzjqTxwrLXNjofZs=;
	b=B2YG5Td4nJX4/Sk1zDo1T9Q0oOg28MWk8IDd2P4qRNvNeopfT3WQ2VQroJeIFx0J
	XPqIaN5OdvtKWAy/M8lJqv8P0y3Hxda+ImhZ7corvsp99LPIif+FhA5DqF3cpCE5WvZ
	Ody31r8rhAZ9ZeilBEew9QmKux+9o7tgU2J8Pt8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6063a5b-394eb664-04b2-4a25-a9ba-65079d5fed7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8efc5cb7e7f42fd0a8a2efd6ae104826780db3b2e2dc2f3a8a805f6a8b53495
Date: Wed, 13 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657690012
