Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2C47B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646785285;
	h=To:Subject:From:Message-Id:Date;
	bh=es0QPT7LtRQ6txaOD7zrUMlpdnPz3SnMyX2eMrOEpE0=;
	b=ZtsaHIRmzOHdrO2y4Avvj1lq1Cube+FO88yB5yabrvstDDif2PBlNDkUJdXxzg9I
	xrIOs0wpvNjtuar1whBvO2NpCf4g5Z+q69VjL3guaF8XVlPhF2QGqKk6uJvPZalIDkf
	OPCuckajfJQ7s7Olse/Y3zFqyItH4JFPrwjM/dhA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646785285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=es0QPT7LtRQ6txaOD7zrUMlpdnPz3SnMyX2eMrOEpE0=;
	b=Wlbjiyu8OffK+vNQXedNc+ZtjZoNCxyOBG9sVaHih+0SyPqaMKQ7alcQwPngDcm0
	dK44vOBKL45xyx6n3wQi0S5dAjLnWBmOmjheHG8iOI2k39LW8ecVHWQSeCeBj7gW66C
	dBakaf1AKXL4yge8JXapiuT6wpb8q/oT6m+K3BSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c0d4af0-57be6ff8-b20a-4e55-9bc0-20afa5dc9fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9114ed3a8a5c4b33cbc4b127c739658ee14554f7eadaa006e6b353e0aab527f9
Date: Wed, 9 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646785284
