Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746167A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650822838;
	h=To:Subject:From:Message-Id:Date;
	bh=Kjkx9wOUluz4TspyxzdKRMYntmZg6o4q9TPGloLAN+k=;
	b=aNjOv4xvSdkZSU/avNhpu+Hx39xNn1kpsU29lXaNz4f5NZTvMH1KFYeXXfn6j7kv
	pe1l1uqVgqLMqZoz7MuzJlaTE+8EQijHq+DhI40Iy+TMpdWpgduNaFxA+HMc7Hutg4d
	oShDcBrtGdhlafdkcAefI7BrfSIDjBA19f6QvC/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650822838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kjkx9wOUluz4TspyxzdKRMYntmZg6o4q9TPGloLAN+k=;
	b=Pf80teuJH3YNy2VylmfYFjthYgMel9s21TPqeEKoHfcbcFkuxtwbwXGDmw9AAo6y
	/OpriHdlCH72NXKPdN/aBSSPK+uIXxauuf0xh/ZbhZhSGaEeAWVDtAyBL4KPNYpnZYz
	8U1PLuL9oiFaleIFAvG1A6jfllPcS8gx47wwBmAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805cb577f8-df6560de-5019-4312-9c08-586f135d6baa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6d819963c496425ee09390d6a7ba53e74312cec58ddbb9ba3c5eeb8d74790d6
Date: Sun, 24 Apr 2022 17:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650822838
