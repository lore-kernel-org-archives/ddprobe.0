Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24484184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 15:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652024158;
	h=To:Subject:From:Message-Id:Date;
	bh=hY/hmhJZsidooFg5nKpjqus2F8DpHW56ndsrySUTJUo=;
	b=IzvjJ8bg0twpTmKscKyaNH59E93Z9tWI9tOklmKsGKsFa1aZa7qNW9naXSV/T+ah
	vXRYhAcFzA50dd8MiiBkIHtJiYeEp9GN9PRlgkqfguh/vH/6ZYCAHSOS/mR2j97h922
	bgWtM10yNdiU1Tu+SJhzvrHDQs/dlgHYK78Ipxxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652024158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hY/hmhJZsidooFg5nKpjqus2F8DpHW56ndsrySUTJUo=;
	b=S3fTPW0ACrig5Ft937gIRtBJuS0nj3Dihe12jvhf9S75GWKH9FVawMduMah4amn1
	5gzpHvTyyTZBk/EKBpreiFEI/4qi3ly2cwEvCKsHUW/b1mVw4TT8+O14oUdsUOlavk6
	1+LucrkYs6xTmvVvS/1HFj00mRSRfAHX0F2VPwGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a450288d-0ff42d51-3866-4ef8-9a66-3dabb456b705-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d23529f7a97fb967c436537526da5290dcd590296fc96d9d3354f738ecb6fd59
Date: Sun, 8 May 2022 15:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652024158
