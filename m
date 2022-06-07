Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40F7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654619999;
	h=To:Subject:From:Message-Id:Date;
	bh=ku2Jh9N0gxI+y0LNnl4wPqxv/hqPp+ZrKYGYZLmX+Nk=;
	b=ErYEFI7o/vuhHxXHDjKOoUbme2f5y3tdN1dXy/do50LyfLYARHBjqkDyACtIYhYX
	Ch1gNDgpVhvuxjCQjyZSVZfrUaHuS7mjhWs4emN8sL75lmBhyWSPCoEbjIOxWvkdid4
	Yks7uvvI8Rx9NDtxam1cO54Nmm8A+NmjzVGAYUAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654619999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ku2Jh9N0gxI+y0LNnl4wPqxv/hqPp+ZrKYGYZLmX+Nk=;
	b=Et+ZztttKga5yfKl5GRS/p3s/rQqrIN5yrANHbtT72ZpJGy2xk1PSf+mWLfNO8TZ
	ZuGF0NFNDVLDAdtWnLoU6zDw/rqflLndM/jXyCICmBUICsjPRmtXQPLoK0jjsy/DUrt
	zMW/6bfFwzqm3j/VwYbpFPVHiOxOGJLTdPzX/iRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f098c2e-9fd21ae8-ca52-44be-83ba-3b1225860626-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34699021c80f5a8c728b6b3a284c70098e24d6d225cc3370e8eff6a1c15c3428
Date: Tue, 7 Jun 2022 16:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654619999
