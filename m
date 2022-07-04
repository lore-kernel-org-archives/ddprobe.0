Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1320015AE
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656925012;
	h=To:Subject:From:Message-Id:Date;
	bh=vivBab9FsXuwJpzt8InnfFFh/vQ3MAPewJTEdBBiUVk=;
	b=k25RWOOUabU8g2kYymCYL9d2TZfgLW/vO3Zb6Aqv6drHxzMVPpXSjauzvzOdfPXW
	EJWkLVL9qOH1gQywafP/DiMwKlww3ls3pSZdzEreSbJFmfABViyglE0pXfQttcdKb0k
	U3S0TGDeBZXW1biSSHXhHFwseQB4kzvV+4pfgGK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656925012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vivBab9FsXuwJpzt8InnfFFh/vQ3MAPewJTEdBBiUVk=;
	b=JT1YUbzCVjAMUAJ+xlzDh3QpG/wblpj4PtBvNVizKnahWNMsEyZXbArCXXuBPquM
	/Lplbl4bOP2FI6vY+a+IxJkWX2L8wiZy9sOQ8YVRRP2lIykpYHojtPw1ZMfiuGomb0o
	/JK44Lykj+kT0MyIY9dWi1NXBUIdPHkUPdpx0zSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c86d413d-24e263d9-5da0-42b1-b701-ef2380a8cf17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e6c4570fa6129c9a0f5996e35e632c6fce5d3b82f1c8c8f0c89ad95267f9962
Date: Mon, 4 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656925012
