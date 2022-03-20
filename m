Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F24B20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647815184;
	h=To:Subject:From:Message-Id:Date;
	bh=A+czzC0y6+VEYdJKLQllkjfh+Vp5MoPBZM2wjtV8cp0=;
	b=HMKIvfp0JjlfDDKUC6r37MzVB1vABA3wjUbe1uJ/Y8bPWDu6+7j4PnELwSZLYYh4
	cbBKOyCI66lvuVV0BVMrKNeqPrBG5P9HgXnabrUob+3n050oPgC4z0LhFrv35vaIQ7D
	nTTZDuuHQM1EXGFiI8qQDN7D5VC/JhPca3uCCqEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647815184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A+czzC0y6+VEYdJKLQllkjfh+Vp5MoPBZM2wjtV8cp0=;
	b=eiHNQoV3kHwcUWKGEtmQEqIqyUfW+XgtE+GTmXfNl/5JXLqZkzh5V+vaW3a3M2Co
	egXdcMnoLsfF+RbZU91gCw/LravoHOsw5yT6qqRV2Jf10/D9yKuMEBSo/g6DUVaiZr2
	oNO88K6JAwopT/ZW6hpK1OVOC1S7xyFX7dKJFvPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9705196-3481f78a-fa53-4fa5-b7d7-4ebf6a434e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ed954abff903f99587943b00450a52c1ea151c973e8f62403fafd325e7cf2d5
Date: Sun, 20 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647815184
