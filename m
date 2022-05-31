Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229D43D77
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 22:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654034939;
	h=To:Subject:From:Message-Id:Date;
	bh=32mFCpe3JFKmHO/FcSWcl5JRSDTwWxxGvtZNgBWSUdI=;
	b=KF6p0b8CLGEpyfK8yDRQA7rT7YXSg3Sq5pWBOlXP8iRJkKR5u761dzx0TCwbs5MH
	TXAlTJsbYOZ2HHog5bc+4eC5X+6r0uRBRrM1GqENofGYdwXOffCbvSrGl5+xHGCth0s
	0WKOJXVFImOTyCoxWGY61tWug8of9PYevJQ442BI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654034939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=32mFCpe3JFKmHO/FcSWcl5JRSDTwWxxGvtZNgBWSUdI=;
	b=SB4vOeKptq+miyWFVoS22vv6C14BpoIxGxNjEJcBhQMGMqIs8dxrfqduFLeMh44s
	sw9/IlUm/XiYQgbFQ6XHf53iXHtsaxeKRXzNuyuJJMoF2iMr2+swjLp33FB7ByGMFsl
	5TB+0K5Gjf8BqVaKPTm98mFjqkdDx7EdZkQZlYic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811c2a3d57-b185e525-22f4-49c4-afd5-65df951323a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cc889a050456fd8868ecdcc92e0cc9f1500fa3e274d6ecc7ce0d40c257af07e
Date: Tue, 31 May 2022 22:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654034939
