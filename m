Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE08A31
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 04:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651119598;
	h=To:Subject:From:Message-Id:Date;
	bh=mTJG8EUaq9NmMh8GdVuUc1o2+zAzKQSmupktBCwtcFM=;
	b=P1fh1SeIsNpgWp3GfcsN1Wn/VTCWTM3ogQcRvWFVhGSwQGvMzGhJLZ9k3gvdWu/g
	JJ93nIkTlG1Vu5+y08vTdTWwCvg/kUAVw2gQ2AHa/iXjxlcSOaHrCeYqlVR0W0oaGg1
	TFJXDFQBy5fvwr2xPojNu4Dc65OWI/pdD1u1lyJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651119598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mTJG8EUaq9NmMh8GdVuUc1o2+zAzKQSmupktBCwtcFM=;
	b=Ef4tIcFB4DGArWxBGMFJunKdmY+nKjicvQzb8aX/e4NodI3xfDnho4RJt6EXZmmk
	ARUh6mV7MY398aqffu74azMMGmx7v/Bpdyx3yinoOY9giANh/zx3GOeH2anK8yGFmvi
	I1uhltlUe4z/ZqkRcWhzpW1oGJMD6AhvEYXgNFwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e65aacb-7057f702-25f4-4496-89cb-fb2d511848a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ae910b236fa09cfb07ef664af38d739511837761f8a903441039880d910ac10
Date: Thu, 28 Apr 2022 04:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651119598
