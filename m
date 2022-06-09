Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D687A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 11:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654775759;
	h=To:Subject:From:Message-Id:Date;
	bh=z/nJmmZVDrEHJRqcUD5HJZbNMgIl96DucYcjqkh/Dvs=;
	b=lnUgx8+Z7M/2PpBusrY7xQo4o+3WBRKma1JaZLWovjjkEgxOZUIUjaf8KFMCvDXa
	4ZluDpp36WTIAP7zrZsbVe8y7gPPwqh5WpshnV+yjHQas8n4claAlnknvCD/q14PU+D
	+0e8O6xSoPTL/XRrXawMO+0SQyXu6VX7mVD9jnyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654775759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/nJmmZVDrEHJRqcUD5HJZbNMgIl96DucYcjqkh/Dvs=;
	b=G74Oy4pQT3e8c0Z0gbolK7KkGEElTzFhQlf7ZTJKWFfyCmYvWjwGF9yR3DuW2Naj
	Ky5aP6gL7sZjgft5gn9lxOmg3P06i2Z2PVY6AqiGF00EUKo/M3ykBNDw3wGdlRunuNf
	N/UpES8oO1G0W7Rm8OhYDtGd9iaC/lqZ9E6tRQ+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814852416f-fc2a115d-1669-40fd-90c1-90aaf68a9b0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1280f40eacf8c05615e143ec97a449ae6925fded94ad35b61ba67b84f15364c2
Date: Thu, 9 Jun 2022 11:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654775759
