Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C563361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647205285;
	h=To:Subject:From:Message-Id:Date;
	bh=VEBqY7a7DJqCaVMN9q/ogRZlTGyFyA0Pl/Dw2FnbxlY=;
	b=O+kkElDftDlz3NJecLjaCBv+xxV2MvVSmy+YgYvdJcAGFBivj/wINW2aitqW9LED
	YmtMzW2X73vCcNwAewr0xG2Cx3aeBtpc37dh7ycG0XjG3klNkDTCx07RIhpBmKKI9+X
	iYbBZTNwJavN15poW5qeWwgYdCnsSIxFadGP1+lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647205285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VEBqY7a7DJqCaVMN9q/ogRZlTGyFyA0Pl/Dw2FnbxlY=;
	b=hhJX/1iHweykNP5t1lD5fbA7PlvZWBjZWXQ4WSpmB3UotLecc63ca7dY7v0kGoPz
	7OlTGyVYvv0dbkyWH5i2G3dh1CbNvgDcqIer2emLEx0gyaRPntYdIw3uzGGewsPELJ5
	b6yiTia190JuRWfJ5/o5f5Ri9ZBv3KQ7DvV9PlOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8515fbc3-2867cbce-acc3-4817-a7aa-46039384665c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 067da446ccf7c7a6ebefc7eb307df413c7c7eda249353cf4eaccbc6a2430d935
Date: Sun, 13 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647205284
