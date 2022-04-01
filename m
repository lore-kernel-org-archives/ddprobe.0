Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A11EBF
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 06:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648794418;
	h=To:Subject:From:Message-Id:Date;
	bh=YTHrNyKPYQKyeiP7fPWQo/5pK+L0Ag+VE25y+5cfTVc=;
	b=e8EG/HcOBdveDg6FKkHAk4+MkhAf7a8DENOTusGsnM+Akh74eqj//Q1NGb2fyoiA
	c+qoxz0nd0DKIP5VggFalO1OulQn4SnhMga9vg/glkZSgnrsMzRv6N1ATsV6rY3Pequ
	z+3VC/wGii3A/hHaXfQbb+7mkTa3YSzMpfwJ2YJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648794418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTHrNyKPYQKyeiP7fPWQo/5pK+L0Ag+VE25y+5cfTVc=;
	b=Mppt6Fhzsnrvr6vqEmpWf5KOpGn0jj24015rWoOnFi82o6dmvK+h3s9EFhxR4avc
	AYw+DIjkarmom5r0IF2TJRNCOEpjFmVjh0JkeYjY+F1tNun3OxqomJha987nAfy3WYS
	fH2eJKA6EDIwrd7U8axIDd3dg3RdflNQp17YswCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3ce3c54-a58f6821-5b57-43d0-91ff-5d24de800122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29112503505c730b879df5821327028086141c8127f6201c9c1f16018d8e29cf
Date: Fri, 1 Apr 2022 06:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648794418
