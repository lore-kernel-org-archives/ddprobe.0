Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122AC2575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 20:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658088412;
	h=To:Subject:From:Message-Id:Date;
	bh=sBM291Gyff/gS6KIKeogR1KN7nIFApSxtvgAYbiaOOk=;
	b=R4NtdVLnQnXFdh0Q/+aMZmTPWg91kSxXj2JeK7X9rbd85brWx54ZAMImQc0qZdRF
	kwHOkJe5fjW9L9fLGmW5BCauVOqjoFVNq/QGGt0NuF62NZLE9mX7XEHBl7etYcqPzQd
	KODTkzKMANHYNXN9ERkGqo/5SapznDkEPSjKWi4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658088412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBM291Gyff/gS6KIKeogR1KN7nIFApSxtvgAYbiaOOk=;
	b=cM4meF+86JqqCm2+8L/D6flUqYNuExYyj4IKEAgBM4g+ulam9R4hKF4U4uh0VLnH
	+gDF7wWePjPNLEawv/itXsN2VtAuVAPPmqNAWvax0lsFgwHhx2Y+bzhSJctcW/XbHZS
	P9SJtAfUfHzZjGQa7/qvIvKU2CJnlrnhvKPYVUvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820dc5547f-e2d026ad-3e78-460c-8240-81a031a4ace5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cac2e7371245c244d90a683e35844364763703e147dd916dd63b6a2693acbaff
Date: Sun, 17 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658088412
