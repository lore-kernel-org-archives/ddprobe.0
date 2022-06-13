Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAE61396
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655134019;
	h=To:Subject:From:Message-Id:Date;
	bh=PFW889FrQa/oygCoGRMFPcz1Ue008dSBiiw+ns+7D6s=;
	b=e4/otxwjNlUtdFXPqeLSHrCfGpJXLSWa3X7nnjAKp/7x3Q4YH3ooSP7dLKfkBsHs
	555IF8X+4/C4MRMzHksXVsY3q2HeLJQYf/96eYlH39MIhZKRqwUVCjctkFt6C3si9w/
	vAasGkd9DdImKhto/VETuNyAPlJ8ji71LkB4Kxgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655134019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFW889FrQa/oygCoGRMFPcz1Ue008dSBiiw+ns+7D6s=;
	b=I4kB2mdE7ErFvwBZ+bSXYx8hZlTrt492imFxGMc7AX9GjcwCGDXOeKmAjppLZ+Eh
	cbV9uwdU3+LnfX7Uhu+8ZdhmYu6XY0mJivrB9PkT8JhaFa6sYSVCR4P6J5kNUtmmxoD
	yXeVCnM4aHKGFNzZpd9bJ/aB0S0lanKtUXUOuTSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815dacdf1f-4137a349-d9cb-45f4-880e-b6f70546f82b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78e138fa99fb3c8e6d5c0f0f89def356bd4cbeac7af4aa837b49407902a2d87b
Date: Mon, 13 Jun 2022 15:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655134019
