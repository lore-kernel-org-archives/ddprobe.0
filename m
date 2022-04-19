Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B4BED8
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 12:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650370798;
	h=To:Subject:From:Message-Id:Date;
	bh=nM9IVhEYk2Fz7aHsN2hCs7pQY6zGriLZgNzWCniautM=;
	b=LKlDcHADbyWzGnqH2a+tEsXZoChxFV7BwPKEjx2U0Iy+rhpLXcjbhH6Uy7mZi1RO
	bc0cVMoSFmin//JZLpg/XLQ0BoQfRcbEYsQkNBfkSpvfosuxjvoFqXxCsKXF/fUY/VT
	78UBdEGpihpmXUXp1icC/UWYsN6DlYinsLrNdEFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650370798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nM9IVhEYk2Fz7aHsN2hCs7pQY6zGriLZgNzWCniautM=;
	b=EJmZJLlaf2FmhwHyvTkRqsfy7E9tYTSuNG1puHyga51HAiky9xDqeNgkaGfEeV2j
	0Z+xw8K+PWvowpbyEFhBS/qTs5psZYx5Kw2uZxOueh22ULwKsQSjPsborNmWOfV7Ij5
	oXnhLpoybV8pGchtV5VDO7LjD/pZMy7THm5d4Zjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041c3e2a6-6ea8f491-8c81-4cf1-9464-0ba0a0b0f848-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e1cf28015927a312bb9c1d9500a586255ba1c64a65eef27d56b0b522ae4c5c9
Date: Tue, 19 Apr 2022 12:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650370798
