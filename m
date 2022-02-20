Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C848181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645374984;
	h=To:Subject:From:Message-Id:Date;
	bh=4zlV9RSJLEu4blkcD3cSEukT5+PBdt8nYse9+PN1PW4=;
	b=IBqp/q8/zEtiyjaepFDQnnUIjvwDxl41Wmi+dP0IlGDBtVxKXcqVSfwkCMUHlLh2
	JaEngIb/CguT1G5Sy3R4Yj5pnEpk6DT8qwuqdLAKkpzSBBPzHp2/LcLXfvK0RTJHFTL
	ShotccTgHD3LxWKoXDiV9g30ABl3+h0Dnb+uy7wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645374984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4zlV9RSJLEu4blkcD3cSEukT5+PBdt8nYse9+PN1PW4=;
	b=YOddahKfkSgPI8CluLUz2KXYr2q3F7uvuMqsDyWOXuj2rB8oPCD7j96fpJXZKwm0
	2JFWyV+THCU2Oyqz+xa1mV/T2mGSWpWQDYvFe/xO7kVFaLjDU/OH8ztpaNyYiEEwVQR
	EzInJcUSE7uAu/ZSuwN5XPmo411dOk9y/kmlkvEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17fdd262-8e93b9ca-01f0-4c1e-9de1-c4dbc8dc19f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca1063c255ad83c776b964d3a716416c46b9b5de9d043dc612b11d84779437c
Date: Sun, 20 Feb 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645374984
