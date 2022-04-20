Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B471866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 20:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650485278;
	h=To:Subject:From:Message-Id:Date;
	bh=OUgxBLx9bPOekkrk43TJ0xeFUFRSFWaMnbV3FoTMDbo=;
	b=QDiL4WbxAALYLJmWvucY4TO05/ba7HcmkWoMyMiUFIiHO83+QXCDvxhKmk0W4dcr
	+h3mC9S+HTifJEEyXCVsEpWHLrZKIBifDFa4/1SkFGy34pzWloL9G6aQyshf19XPZxu
	f7H06HulfkIz+CLn0A2Rfx7FFprQKdtjPzWFIn0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650485278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUgxBLx9bPOekkrk43TJ0xeFUFRSFWaMnbV3FoTMDbo=;
	b=e8SUX5bhxXfJv/eABZvNmJ93/Yc59wxPk6O6nteHCT2w4GemvOsQr+unejg5le8a
	l4QWP+PUXIIfJP50b1KItWPci35Cn0IHwx3QNFf1xVdWz+p9VsAn8PcFrRPMpafKHU8
	hEA5M2BmDFZQEAoBk7eIKxE+T4P4WvJ9yq1MMQFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804896b71f-c016f395-abf6-4060-a47b-13b5225a4037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0289b80cd4d4f1dde5e50d38b6398cd6b92488722328dab75e3c81380c6569cb
Date: Wed, 20 Apr 2022 20:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650485278
