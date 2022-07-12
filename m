Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF93123AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657596412;
	h=To:Subject:From:Message-Id:Date;
	bh=9b+hFsHJUlGe8+4O9K6PB/FVUR4BY4QNhPgDPa3cj6E=;
	b=aE9zlCr6cTSXz+ak7epOI/nuv/C10+SfcXAw8ZBNp4nw6kTgLtHFchFEn8rXmZce
	X5nOO3o9x8KIEkSBMlNf5tdtHkFh1qhM8sUkHrZV5++PQI3MPYBLNWwYeR3G2pe2lnL
	F2G34muiAt76VBxqczlixq3/Ey4zWo+A9uZ1/lzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657596412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9b+hFsHJUlGe8+4O9K6PB/FVUR4BY4QNhPgDPa3cj6E=;
	b=g0wBfb9uVM4Q0uvikbwkd8+p5N2L1Zt+MLoQ/Lk9Q6XHS8NKnCgdBkB/NGfeRRON
	xxYjzhR0gIDMbsDco3eDHPb065CUstnebQ5uLeI87HIL3LrLZiMH/PmoN/b81ufLoPC
	ghh8GWmXbPZHfypzkjER0dtNA/A1r+e36R7kZC/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f0720163-370c44db-9e95-4455-9f69-d2f9a70e5a3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf35dfc8cc864dbdac3745581a5eb3fb7be4e096c569d5b923c9f76da6ba1ca3
Date: Tue, 12 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657596412
