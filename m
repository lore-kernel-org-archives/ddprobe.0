Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3BC1852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 15:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651246799;
	h=To:Subject:From:Message-Id:Date;
	bh=K3Hskr9jy5P9bgqf4X5/pFPkLrtjLZlPcuNTesDBYeg=;
	b=PJrUV2H4PreeCSPepwAlrqcgLboRfakOAogKpBhasxQ4REvaI8+PV2yJEf83+ys8
	p6OgfMzvO9uWGdZ0EJiw4p1RZ98+0IIKu/wURGmoMiCslkdtzvHBpgmYiGmX/hwySJ1
	iWTGNGBhjuM+vESXLOnTa+hpMoElwjhdGnl3tFy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651246799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3Hskr9jy5P9bgqf4X5/pFPkLrtjLZlPcuNTesDBYeg=;
	b=eXC6UIbwRkGH5UwoI7shufvTbNsKu2bW7Ry9KkErF78AQKGIFDceYX9qhIaR4iZt
	XxR7O4ViyDCyIf05Ryqp3LOTaGfYPelA1yizb/5fPi9/OX5R1tPJfH4Vapu5Da1Lpnb
	b1U30CTHDUcT+craqyltdlwsExwba8RxhLysAA7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075fa962e-2f6639d0-5e50-4bf4-9f41-fb1388d88688-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9804fca32e4e5f128ae230efb4ad7cda9e109c0c14c48e770a3ea43f68f42fb3
Date: Fri, 29 Apr 2022 15:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651246798
