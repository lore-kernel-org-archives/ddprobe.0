Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2847C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654586519;
	h=To:Subject:From:Message-Id:Date;
	bh=l7SEdBM/zuMhjIadCxTIhXdgsYj+4Xwyx3ZC+AOk0aE=;
	b=Qrvb1TRgdaihEKkWJQnufnWrH7MMZwpSEVqJ6NiGVWSP0DNuUBS9gjZiQvBFiesY
	lZdvVtzdNUExJqgYkf33jwap8domygB4PjgibXm6m/RdC/keW5h92e+PwJ+hTSQZo1a
	pyqlaVG5Hmr+Otn2piVmiHgO3vK4XDatIEcs4G8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654586519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l7SEdBM/zuMhjIadCxTIhXdgsYj+4Xwyx3ZC+AOk0aE=;
	b=i3a1ZoxdCz4YkeH1q750Prd95rahZUnf+0Sy4cNL1iuRY8x95Z6likL60S/f0DSz
	J8VJR2jIgHWwwlVzDEYB8q5pY67gGa5y6sAlAkuzQUVj0UaCLz9bzfXh9glTgQWJ+QE
	xSZSDFE0f+Yc+zaweXPWSPTAECkX71ljqgbiWRNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d0aaf01-7691d76c-2fb8-4fdf-89af-4de877bfaf4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83e9f47b87083ba3a7af4046dd353e76e4e61779fb6cec07e498ec39d37a81db
Date: Tue, 7 Jun 2022 07:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654586519
