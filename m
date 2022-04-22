Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4697A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 04:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650602098;
	h=To:Subject:From:Message-Id:Date;
	bh=04Ou7npawIijyl9AeJasIDbBnliWJsaLh7149d/7dEU=;
	b=KSKDfyoh11uDIVo/ZVKC2GkLFtHirgbqQKlrpGU+FbE3yvMUR0oqKn14j8ZQdJ+Q
	r6WTevEfbb2LaH+soKYRHF5MFxG/AIERCQou8owxDBcAykc/GxrGxNz6QGcoHMoIos9
	6eM9IULcjWAyLmjUp4AiWPgqWxBpKAU5pAvleObc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650602098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=04Ou7npawIijyl9AeJasIDbBnliWJsaLh7149d/7dEU=;
	b=fR+CN8sRfsEel3pRan6o+hbVF/xsVazYEGe2q/FQqXyeorRoKUQYVqriTghE28qI
	HyRXF/oTDuAtt5RsTq4yjV4Qo28rPQ1dqNXDteBxWXwHGQpIDM8isAA6sp1d8XaRVoZ
	PSZ8rfatCPhDHP7AXHUlpslZ/+n6g6U1J18Atoy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f8d3e87-3651c957-749e-43bf-9993-f531fcf76ad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d11c528f93cf2acc2e9d5a62788bba3cde6ed9617a4dd07c0a86a8c5afd24d36
Date: Fri, 22 Apr 2022 04:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650602098
