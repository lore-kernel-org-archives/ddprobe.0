Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CA57B
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 07:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658217412;
	h=To:Subject:From:Message-Id:Date;
	bh=n1wx9TlulenwfFTjsH/LEoSttkeH4WnXc3MVe3cItCw=;
	b=HKbkUN9Yg62+YW+gou0sQv3WIeTNiaerWfP736etyOTFPvV+Y3CtG9oQV83WVznY
	7iT6X5YAlQmd4hk5RI4aVzLWA9tsNLkrw7eKo3VjmXkDb3n0qwkDHp2uaG02q5zTCw2
	4Uxjs569qJkyijuPalGBvygw5j8zBmeJhvZiklLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658217412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n1wx9TlulenwfFTjsH/LEoSttkeH4WnXc3MVe3cItCw=;
	b=ELthN3r7hV2nJ6AqmIA6dOEk/dfX/pPFqsecTDMCwHAkYyUrhlqsrczE9LBxOu+0
	mIzsxcCx35AmX9Id4oWPpArk58eLTjWokLkMv+NSeRmjhhyUvAJT8QC75M063hrDFds
	I8lVNBJEMl4uuZ0mj0VxSdAkkiIjdxP/zPxdBdh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821575b6b6-87384f4e-77db-4739-b7aa-7c755e7407bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51adeb72bc7a4ea4f5cf206136a6e2d5b24efba2597d7357b71ab1fb3ab6c3dd
Date: Tue, 19 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658217412
