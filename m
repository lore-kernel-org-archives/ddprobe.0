Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070B915A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 01:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650678658;
	h=To:Subject:From:Message-Id:Date;
	bh=UPegghpNlnvO+4RlaT41n5SYTJw325nv1etjm8/+Z7c=;
	b=RYTzpA8O+65HgL1bA67rEVKwIY52YpaNK5O2lV/4wkrY8/Dad5efVmjR2rQ/2jA7
	mHfSdyfnR2U091NxHG6LYnDtL0+i9lK0gqfcplCPlqBOWsBm27Y1rXKMzETCfyV95Sh
	EdHMR6MM4y1yQmHOTpfJqOZJ6mUybQPzB/7uWptA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650678658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UPegghpNlnvO+4RlaT41n5SYTJw325nv1etjm8/+Z7c=;
	b=Jynr/Bha3RHXz/XYsBg42guqM7UvvON123R2zP9WrDlKlQLjl0wx7+GTOLnSXoGw
	XeaywN6/a/8xRPm0gAo4qXWjfU+41n1LT3g+Z7m9auzyXywRdxuumEGdwEtoYT5+60y
	+R/q3u8w4T2MQqNbhyNiXrd0gb2hfzjaQ+CnkjdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180541d74f5-9ba4306a-f0a7-462d-876c-869fda1daf35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0da7a9417b00b535cbc51cd764ee2169b30961e97d1ce822c8cf8b8733afd52
Date: Sat, 23 Apr 2022 01:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650678658
