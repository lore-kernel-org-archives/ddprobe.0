Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE9F1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 19:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655236079;
	h=To:Subject:From:Message-Id:Date;
	bh=RUAfldVQFJLjQ/iO1ylbSLYIo1e31YlyeUBkytLUFmw=;
	b=NA/frMVnw0jRKqqyHvg0IsSAMWqc9jOnAXKrZLgGll79RoMeYz8czIxUdGk1DKKW
	LRjvauRqdj6Wu5T7HkvMk43x+1WZbJvP6sYiW0ze7vByyjrN3cZ65dbHWBLxQaqNRxc
	XUE3ZIBcbzFDgffVZUWqsDBOePD7gUoUNyaDX4Ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655236079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RUAfldVQFJLjQ/iO1ylbSLYIo1e31YlyeUBkytLUFmw=;
	b=OIy0NTBhtFRhqIaac0JS3lkMr56BZi43oM+qIzqC6PzRBD0B3tq+SozTI5Dysd11
	1UJxuQPx5D8RE2BN2e2SXoj07PcLkwBUhVTACsgbjNSOqXK+cz+JiFG3K4z3CWgGpF4
	vxDn4LJUOcgdLnDEeV+WSlrERRWg6wbbGppAJDQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163c22ebd-43abbc1a-f7c9-47f8-816d-552ee08435a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c05b8455d8bb10312ef102e54afcbbe572fa0b595b487bb6b9253f128c6af93b
Date: Tue, 14 Jun 2022 19:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655236079
