Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F8F160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647715284;
	h=To:Subject:From:Message-Id:Date;
	bh=jdYOKh37bap9eoxYo0nnIIql3kCssv/fKsx2D/lAMWI=;
	b=KLu3aclzrp75o88qGMfIDVVzT6/sE7Vk5UbebYoTr6oMer8eT7ZWNYojoiGjgtMY
	6yLpcTzIVLOHuwUwvTaCGdjudcZ4gOt9C66bwyfmVRhRkvlTeb42DSVSjUonnLfGjR8
	hjdRnfh7UBRtRYiBFGSj8RTCAxqZZoIPigHReHsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647715284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jdYOKh37bap9eoxYo0nnIIql3kCssv/fKsx2D/lAMWI=;
	b=WgIylKipT9ZJgCHj4BceazfZ6T0mVNm19Y/ugfqFchlpy/stP2CsMMop0ceklmil
	UB6V4lvu+JeGbB+1Snb2z7qzVuqamy/teeRnFjGuFBZ5h4240EUG7GpNZlZwxp+GVOC
	gaD3Fz4CLr1uYY4dyHzNDGf8l1B31av9gp8I93iY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa37bf72d-fdf43369-4018-41fe-8e96-c9fa0cb0c1ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d5b4ed5a8b1ec48121983cadfd385b710780a7723f2c0f8eb9626ab58c9bfa0
Date: Sat, 19 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647715284
