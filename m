Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126FFA22
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651065118;
	h=To:Subject:From:Message-Id:Date;
	bh=WN9q17Uzbo0zfHLhkVkDAQ1lw303BEv3mvXDlgyF9To=;
	b=Z06kOYaTPPVQc4oPV+J5OHTdZTVqwh4bx8cspHv7LPsfWZs9bj9kRpal2YbIvC0H
	HG2mm2OqLg12roCVmMo+Cz5lP28NhRKQxT6/bZv1a3FNCxJIQBmLv5VbVmxL5chG3UV
	Ry1yY0sS7zfiqJxb33Ir/lv2yPZbtC9zyaIa5aQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651065118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WN9q17Uzbo0zfHLhkVkDAQ1lw303BEv3mvXDlgyF9To=;
	b=L7I5o4+34XOV1JD8zlWfuCFvwzYxbNacJ55hQ6FS4PD1+JLtBG2r2PPo1EyIW4Nv
	thZpylmsA1QLYjzVRLVA3qdd1ixmASmwrhjxv+ViE3TSbSKASA3CISYKd04fhvv87Ms
	aOgLsOc1cZ4nNpo+sRl6ExYEB2ZMABdRntPaGuQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b265e50-1b13f303-67f2-4020-a045-6987a1fded83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5f772a81e1de091a31a9c10cf825caf293408e626c026931d17cb5904757aa9
Date: Wed, 27 Apr 2022 13:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651065118
