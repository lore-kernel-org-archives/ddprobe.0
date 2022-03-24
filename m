Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468AB7A
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 01:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648085158;
	h=To:Subject:From:Message-Id:Date;
	bh=W2oGAK0280nbgri/ofFl05KJhYIeM0GDYOuYmeHeJ1E=;
	b=A94xctXGcIPUdY0s4ZgfULsd+rvIG51Qmpur3RK6P/Zg8EoYzikn7HygmKehy4Uk
	XHrpDHKPPOlwEGrpV7jWgWfY/Vo9f2Spt9Y4BK+y0bDGqWGrwgd8NnAX/7DlBGR9z2Q
	HD03e1NxiIYFyuSsUdGagomRyZKgcApVNUFijvW8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648085158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2oGAK0280nbgri/ofFl05KJhYIeM0GDYOuYmeHeJ1E=;
	b=kPpi6CLqhU2XadOvgZA8jUm+11wZQd/jY6h5e3Kn/7KigEWvsCd5OjDoqG6jH2b4
	6Zn8nxK+AOudmibRrnZCknB5pYZZyvQgQIfcMvvtuM81FsS+AOP9Cw3OHH51ztiSGQk
	vEBcpw3RYph/t5U95HohxKTDrOdpOpnewrrzQDA0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb987c95c-4e434513-41ed-430d-a4f8-baf577bdf161-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fd31a4b8082cf4689edbbf18bb494b75ad71ac83ce14244d2f18a55c64f8028
Date: Thu, 24 Mar 2022 01:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648085158
