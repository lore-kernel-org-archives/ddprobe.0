Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583A47F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659423052;
	h=To:Subject:From:Message-Id:Date;
	bh=UHWjn9QM/KX9X/n9hDL/5SwPvTCUOg+nl83WxoW3QcA=;
	b=ZlpsqWzipsV4eRgECXnAHK+/yxb/181zHT+qC6vxxnYlYDY1QVID1lZLeFuMU4VW
	BmmxXj1nYS1ZdPamzuglrpEajyzxGqWiATbj702VdEp3xGggjN5ZCD4/h2eJhyMHjaY
	j2+fKQRGP+LOgkVhapiTUCXBE6Bsa3vaCb3rD+Hw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659423052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UHWjn9QM/KX9X/n9hDL/5SwPvTCUOg+nl83WxoW3QcA=;
	b=crB5eOkhceJA/sUCqCs/yBWvsVMtnBx+fJKfwVdHTyDkOA81Ao2gQBBRdWBzYX4n
	ia8ADU46yYQll5L+vTUeNbDQdfBv++c7F51w6LB0U2DUALJGKJ44UXS7ug80kGzE8GJ
	ornmnx1XVNJzypJe5Cn0pVEOK8yIYpIJ9VIYtuGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d525340-cc2f71c0-6343-4f8a-b1d4-7600495acfd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79a0e0e16c4586e3a2891176bf8b45c7cac305c88d9bda9fc773499a267fad3
Date: Tue, 2 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659423052
