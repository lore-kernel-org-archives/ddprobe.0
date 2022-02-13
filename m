Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A19CF642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 23:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644796217;
	h=To:Subject:From:Message-Id:Date;
	bh=d/xJckAHowIPnOfyDCKK1VG/bdjFHS7EN+XE5Bk9zqE=;
	b=PZhPUyMZZsa9psdatHElPCi3U5M/b+KSvTH/IU96zUvs4Q/jTzJeYgOUvwwWPkJe
	KQJr6kUZd1kgDiCPxveg0KhArMPKyLFttdFUyA9IlehHnDuC9ENnlo+Kz03JeGvRDzq
	xXjBC8F2sozhvvSXoyudc02Fdi9olTOUrAJFkCbc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644796217;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d/xJckAHowIPnOfyDCKK1VG/bdjFHS7EN+XE5Bk9zqE=;
	b=aqAVBPIKChUqN0Sus2HEpmSW0xJRDWCiYuHHuQiyI9QkhQgDRAyPnB47lF+uTYEp
	5SWSEggW6Pf6514VivilG98EIRIq78fU5liaMU2DyQOPFsWbSQ6hXylj5RjcUEQ3QJE
	ghEhh9wbymxGdSOLtBdZKk4gOGLNt6Nl0PcT14Dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef57e89ac-f30754fd-4540-4f09-bd09-851a6b6dc0bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55745f569fd5eead6528d67d2f52b7154ada307533298452a9ae5c0f177dfde3
Date: Sun, 13 Feb 2022 23:50:17 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644796217
