Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3868814
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654177499;
	h=To:Subject:From:Message-Id:Date;
	bh=kcB4Y+Jc6Z6/Zqi28h4JPMMUTQgALAHqzTyOF4Buurg=;
	b=k78GIbxwZ8s5Xf7ikz4kLuV16bXmvmxqDaLubgggEc0bpCbTuwKT0yYFPJ0sFP2d
	9haD2hQfiN7RcPIjjDPB1oPsvcBwAbN8y/RkO/7QfuXyYP3qQ7Fn7LqPPB0eG7YTk+5
	8hNc2z0WCaCES+G/QGuukCZs7U3MgbiGyLaWhgEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654177499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kcB4Y+Jc6Z6/Zqi28h4JPMMUTQgALAHqzTyOF4Buurg=;
	b=FpntDX8QQALzITGkjlYwJhtldSlURD82+MpXUuTW1MV8b8q5BJTRq8yrojVFpdA8
	eUNwUNqj+wh6UI1KZ8+VClAuZMDMVcMkpIvyEg+Nbee+JAnZ6ixyEdTzUB13iRcnIt/
	z72CY+y4FiNgcMP8s9g65BS020hN2Hv6eeGVFsz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018124a9885c-074ccf6b-9660-47de-ab36-1a6833f46d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c76e307e2d4b0a822ee850ec73cd47d33af1f559fb72801b9952bdc2f3e1f82a
Date: Thu, 2 Jun 2022 13:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654177499
