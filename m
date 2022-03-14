Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DF4186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647263484;
	h=To:Subject:From:Message-Id:Date;
	bh=eexkQPNootWGghISc24IPwgAfKoK0TqhIBlTy7MBJog=;
	b=DFftKlnYF6MKIMfBoM2YtuO63d+tpMVq9espqQYuCogRWvOg/46FfB9iNpnuRji3
	KwsJx3RK2kyacgl1hXn8CuDg5UfNI+xo3JJX5HF45Z6lB5Pn57wwY4mJilec+oF4AYu
	xBXA8ppXCcJZHNi9nEj3HG5jTEZYuGJI3Z4PFRH4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647263484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eexkQPNootWGghISc24IPwgAfKoK0TqhIBlTy7MBJog=;
	b=A4klobhSjKff8l8guWzqN1/Y+dtAO8YWaxiUkpbgqDgkA5tyS5OSdKoKLbvv6VEF
	41pSWlzA6jDaehEWjM2CaXCvQxAOzrHYQoDizJz7YEoiWvMS1jIlRiqBPfH21qe6J+8
	dU3CXrN+b39EOYrdVkBDq3Qw/TQUV0mAWFGTh3us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f888e0b77-8e5b6bcf-a930-402e-9c99-beb2b83c9b84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97d00538cc2e51e64073a7f757933afb2d71984e911be89fefd30be2e7d27f39
Date: Mon, 14 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647263484
