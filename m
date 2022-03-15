Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67881B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647330685;
	h=To:Subject:From:Message-Id:Date;
	bh=+vuQqbuDluLCJSwlw8XUO20sUeQMgGisxi7lQjEEVh0=;
	b=G6l7yjyeZe+owafMByxvIruz3bXA2Y0Vqhm2DLeLkKIHRtp4BbMtjhArMYjO2b7H
	chPsSh58aoHM6GDe4pH1MLVbe2e4dR19Swr4Vvmvh2CW5HFt408S/w4M5A61jKf2gEo
	e9PROe9XQ3wADrwVmC8PRbVCKw6uQ1R/rXATc9Uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647330685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+vuQqbuDluLCJSwlw8XUO20sUeQMgGisxi7lQjEEVh0=;
	b=P++Cgsw1oqDN1/po97k7c3d/hLZlW6KcZpVsYiQPrOMq519oNX9fI3me9DotDkdJ
	TnJAIQDwKq7eEiF5qAqQAcSl2nTeIDkJ/l4rM3HhNCADZD80dURiHLyxpDI7A+/lDwg
	jl0tkMnbuvgIHWCd4Brz/WBRU/IE0XChRRt5QhUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c8f6f62-12b846f1-2cec-4f12-bf55-59d601eb4a65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5221a3526ee45f646eebcac79343db00cac3f888022ffec3f0d4646ce85f10f
Date: Tue, 15 Mar 2022 07:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647330684
