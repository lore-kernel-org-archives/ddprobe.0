Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC93628E7
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 10:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650624658;
	h=To:Subject:From:Message-Id:Date;
	bh=kRUOXshkG0NZA0DmQBfdNM9+KCKhKTUWfComw/emNEI=;
	b=elCBuH4l4KHuM/NJxeX4DTu9jKtt5KhQ9SyCCqQm8+tM/KMtw7/rPUnD55JeVz0l
	Xh0gZnMmoaOFngNO3e2qj0e5jkEiIPbUdLN3pwSLjPAQnR1RQGM63tdL7YweTPW5pZV
	+fKGTRt1V6R3sal1wiKWJUJ6ySTcTqj26nKtNzgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650624658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kRUOXshkG0NZA0DmQBfdNM9+KCKhKTUWfComw/emNEI=;
	b=jPVI6A5btLcwIyvlWsS+a8rHmoey7wPUBeWGUSWKJQIGtno2ONAa0T6c/H6+lG91
	kVd9K1oHdTJzW82Y6f2Cpu+jDjTgjD0AUGxy/Zp6Nv9F74kls3L+yO7NKRR2Ia3acO2
	ft0JTpOGsf3nOTAqIRygdbxMzbLmcOdYD72M+Xgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050e57b60-78bf9c3a-b1bd-4f58-8021-1ff87b26c2fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25b79f08681e83515f60461f728023b724f4db579b77f03d1bee9b04bc2c67db
Date: Fri, 22 Apr 2022 10:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650624658
