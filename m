Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FD71383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 19:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651951738;
	h=To:Subject:From:Message-Id:Date;
	bh=8LrwcaA5N8c+G+aSC0eElW/5F5AByStZphh4iPx7yw0=;
	b=KfCH2R06uc8K4qHXX121Wb/9CKQf/bTf8nC/MqX1mDpn/Cnl57Nz6IuYY6lOm62d
	5a2Ao064iBYiDPcA5FvxueaczOMLsy/zDBHoJKAzYRoiAAAxY4V10Jr9py6h9BpW9jK
	ulHXLvunoCgEDFNP4mpImvoJrbb0pvsMOQZfZtms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651951738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LrwcaA5N8c+G+aSC0eElW/5F5AByStZphh4iPx7yw0=;
	b=ifacvIGiA6sVRWdKsod0kWF7kXRBM+2K1Dl+WTlTvCN0YGkbd1QGx9uxxFDI/ePC
	x9Bmzfxd1rKJf2gupnJFOZQIsLEGDNSpSNFTcTVBCPY1/f1J7+sRqyWPU5SD9vst0H9
	53iTPXAPhEwhSTvOJbhq9iSJouMsndcv2uBH2f1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809fff1dbd-7f938bf4-3f65-4e35-bb7c-ba1b54d5af18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fd0f4b89f8f9c6e760883259c11a2a0ccb6dd53552c7c573db6202917d15a58
Date: Sat, 7 May 2022 19:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651951738
