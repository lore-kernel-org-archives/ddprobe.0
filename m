Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF5F7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 00:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655511179;
	h=To:Subject:From:Message-Id:Date;
	bh=7lQwpT3r2ngvtp0WfUe7fK/mBKZ4DGmo9tHO/anEjZw=;
	b=GJtcCDLQuteNDeLB6vHCZDj9ZTvpte4Xi8yKXlmJl5QNooSIZ/UMmycsc/EC/u4I
	dJpv2t8u5sVnh1gymdWfv8AhGNhF80BiVHjU56eKLKlp2bVQImYdSXvt9zJTTcSYUGn
	d9Ydn8w/qns3fwiQZivikw3fqVnz+robpPdRvEfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655511179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lQwpT3r2ngvtp0WfUe7fK/mBKZ4DGmo9tHO/anEjZw=;
	b=FufRJdQQx/OESRzuapo5C7xUMvjecM/T91h2eXCCIg3t4+Xow14a0n+oHQWLHhoc
	twxkrevAbBIwBkcQ26gfIwNuzV60ORjaZG1tyGhk57tooROsEAWWUmaKztmxq9elhoZ
	fkz3xsa/V1FofJbXEFQ6rQ/5LZGYsb+DmBXydRfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817427dfeb-0c691c10-a275-44f2-bc9f-7224bd30a7e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a03ca2996e9a8b62e4f0f2564bbd68bedcc133fef399c90564453f8bdc8fd44
Date: Sat, 18 Jun 2022 00:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655511179
