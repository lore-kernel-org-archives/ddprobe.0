Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8897E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654380779;
	h=To:Subject:From:Message-Id:Date;
	bh=Y30yoZfe5dhM4YOFRE7tq1bmLTUu114BP5DzaJifmpo=;
	b=PjAQMUg0mTVVbTEeUl7OB1YyPiHV/3/WpAqv1u4ftlQ4ibDtTlY78erJ4VHqQ5vj
	l/9bm0oGfU9EgqVvXj0HYdlkdMU0w8ss3wI37UTfy1aWptRuoruoEdFWLqIebk4w8YP
	q3Punqj6zeSqOmbKQFHCkn07aUEldmno2BugH4y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654380779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y30yoZfe5dhM4YOFRE7tq1bmLTUu114BP5DzaJifmpo=;
	b=QPzuqtpWfRnvO1znYLoL61yKpxr7L8olO3V5weptY6Ud3mF4q2Uln2VEcVbYNXcz
	M0iVNLNkg+/k2kFJyKF82VjbAIMvVVyY1Cf7W3LYQ3G/7L5WtHzuhXaJAaxGN+ziJVA
	jMBgZ4yZiDdOfVNDz7EDdqR9ePN4n1ZjONIn0Muk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130c7574a-f86cdf61-7cbc-4a67-ae11-082ed73a3e38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ab8a42b0ff9916d838e5d74bf4a65df1535910eceab8550a6923d2bc27a6fd5
Date: Sat, 4 Jun 2022 22:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654380779
