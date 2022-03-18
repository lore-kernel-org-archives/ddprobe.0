Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF0015AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647566184;
	h=To:Subject:From:Message-Id:Date;
	bh=m83obHTlg4tHmYOLtpjuIMNbmYpSaVzx3JS96Gji45k=;
	b=A8ZiQD7OoNXdbJhX7OkhULXWtMEST4GTpHCakzba6zo6CA7OHAX7QBAqlX0kCWjX
	QQxeIGa8NI0V2hpOfMcArIZHH9kvmVE4w/6xUCHMGzZI4i8ezXsVU/sewhWQHWb+sp+
	47tHF9Jcc2t6IeISDc1HO8rVzKzj83AlIXHu5JX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647566184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m83obHTlg4tHmYOLtpjuIMNbmYpSaVzx3JS96Gji45k=;
	b=X0gF4J4jm59BsOYQviX7gXodLPeOfyrS4atbmN1isnw3uYQtM0//gm6f6Esvc7yu
	swTJPZW80VF+UVv6YkUZ1On8sWg7JNO8at+NMTyqTVZ2dDToN54aLZjc/9Vrq+kdmNI
	UR7QMP3q9Gh1Ct6pV+dAEGb0uhZvA6eFGacVjCYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a98e13d-d228ffdb-4cb5-438b-9ab5-ea073cf03b01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af481e3e3273d14b51776c9277951de92d85bbc4f3a059f7ea504a00275527c7
Date: Fri, 18 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647566184
