Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7356A7A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 13:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652533920;
	h=To:Subject:From:Message-Id:Date;
	bh=94baEbRz4WwsHKc4ApdIhE7D29F9NghXsdOQ15DB8ho=;
	b=hulMFo4iI/+Pfzl7O/86XPWcA4ZWZ2EdYuvRFR5jr2G4uzAHS0QKFcFyIPDGBD/O
	Jt84bjOJvKRS2+U77voZ/ShDmEhpq9MLrxjUZ76ZEj9VmbE3Q0HBDjkKrmnkQXF1uO/
	YeosDemEcuDuFmW7JW6EI8dfMqsSmuMB6YZxHLtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652533920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=94baEbRz4WwsHKc4ApdIhE7D29F9NghXsdOQ15DB8ho=;
	b=XglqSYjGSHtyUTgFxTKOrDCsX71G45KIkSnEfuaewZtZZZ72h/cKfZ7vrcAMT+Fn
	4XBPH7IzXO/Vt+I8gonBkZQBFz4t/DY1Kl6phtZ+csUmwFM7Tw1yp+qpJ1hs3Mz4N0x
	0tDfdawJDo3nKWmR/llqdmHUAIzu1lzj0B3954aI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c2b27e2b-a8bb8adf-3f6d-4f52-85ea-9eb1cc3dd872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5738981c97919f98a9c70c4b2dc26363f2043da078d27fc9d6418bc7f924521
Date: Sat, 14 May 2022 13:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652533919
