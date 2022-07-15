Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3B32FAF
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 20:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657918612;
	h=To:Subject:From:Message-Id:Date;
	bh=QbycNyYB0yiOrIhXN4vbGQKjJF56c2rRfKf1wMnvGDc=;
	b=aT5cqWGODA1zNOh+FHEyEDRk9vHkhaiIrctESPk0SuBp+Vg569MwNx9t86PtCHR0
	qiZAqoZTjCvIR3gxtG5g7BA+8iYZ980Yc1Sb5VeZ/CWGxYtqV5rr5SbnRBDqGUW0qCZ
	5ZtXBCx12ALBlZCgE4Dzr0xtXl1mimR0PofV7Qk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657918612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QbycNyYB0yiOrIhXN4vbGQKjJF56c2rRfKf1wMnvGDc=;
	b=joCNo5xxDbtfenqb2PxstSSCrm2Mc1Jm4/nwBItv6uDtZjjZ4o7KmZdp0VMmzfcl
	qjmfwGLJ7jCOCWOQi+/9C/WVzuPrMMbHealiJYObIaot5UjfF+Ag+b0OQTmvcj3Iv7D
	Ea/xktIT5TecTpA0xE7MLnCTIcIGNiZG1yihMExI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203a66371-9b83d6f9-a712-4b64-8451-08ffb1b64e7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b2d33c16e10e8b7cd17fecd36c8d99cd61c527b3f9e6cbdcfb79de944cedb48
Date: Fri, 15 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657918612
