Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 994CB15A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647635484;
	h=To:Subject:From:Message-Id:Date;
	bh=7026GDDYaaUQavBG3E3C1V3S3buhUopuTNr8AvHNvFE=;
	b=VnpYvfYT87z35USxZ1NUpHeZR9gWAEObyUO2MKuF8jxUDfuWF60CyAaFNVVV+oqk
	ijrlEuXZvkux2rHRmCRZXzTcUEp/xF+FjagipvJRsJwNOq9kOL14MM0CPCmjB4Owrjs
	agt4p2W74DXUlOtMl0f1VfZ8vhhv9t/ZuejvcgMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647635484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7026GDDYaaUQavBG3E3C1V3S3buhUopuTNr8AvHNvFE=;
	b=QStfKxw1ipJZWzp5VwF5bSfKD+3zvZq7oHkspa62i1U84v9XwTdifFOfOvCuIVTf
	x8wgm1G6nsHN+sk6PjxS+5uB5FS9oI5ktHX6znwwuLzDZoDG2ONm74da8/beyk0lsvG
	1vtOt5ZXh/n1GisWdE5xR7ntP6s2TyAFDpdN2rTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9eba5058-69405b98-e210-4589-bf7e-d7017d7856ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69a4cef43b48d5a101fa1dfb191b5df874d5467105468d740d687ad1dbfde186
Date: Fri, 18 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647635484
