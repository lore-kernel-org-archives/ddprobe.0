Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F337B
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 10:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652090998;
	h=To:Subject:From:Message-Id:Date;
	bh=qzEyYTucqVY+LyuRDZuQwIGggQFMZAejvyviJqIJIwA=;
	b=EhV4B3rjudj/PBkYldSELxiS11MM2ZYGCnw8blMh27muYNTd6w3Iw/yc9pKTxeYS
	xv7fHsUwsJVA92vR0SqQm+bVyz+0yQW9pGsMGEJwvBLb1yFUG6YVVg1IcWLG1RpakNP
	+TH9BALnW+d6XzJk8GwFxqs1rOECzSDlubI3WBew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652090998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qzEyYTucqVY+LyuRDZuQwIGggQFMZAejvyviJqIJIwA=;
	b=LqgoocpZ61PO2L2dI+9VQtd7DDZfklblAYcOroNd87DspWQxmMV8+8nIKCdh+JN+
	4W7CBRybAco1R5ysSGgHfSe9wS9QFaFBq+AwZ5EvebvEM9g4gnkT+LfLZO82ydqzIyT
	Lc0CV0+rwaMiD21R/LSgGQ+GS6BYZPKDUdtt4M2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a84c0e41-b05eb5ce-a983-4cfd-8361-0b94c2145e8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7704a36ef04c0d1e769a2139f6140817674c9d422b3b8cfaaa4afad660fa84f
Date: Mon, 9 May 2022 10:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652090998
