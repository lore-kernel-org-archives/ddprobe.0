Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2578F2564
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653746039;
	h=To:Subject:From:Message-Id:Date;
	bh=QFo1Onq52EFwnLhgvWIOAuENsXz7a+u9ilOE75zFXq4=;
	b=j7A0TuL0mcxlsjqMmphDXclsz6vGr8epPneMNHw6lVG1wzolO03GsObUhTC5TDLv
	RUjMOGFnxV0FdNZ0LtzPL+ydKYHGukR0loGc3uTg0m2vBv32DsR5M4cxR5+kJjtk+S/
	Hjwb8C+B1pDP8pStt3qkSPNi1B7bQnLfxdoKec2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653746039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QFo1Onq52EFwnLhgvWIOAuENsXz7a+u9ilOE75zFXq4=;
	b=UBI8MhuUjfV8G+DkTk6E5NTNbsQUg9mJxfFJTtSqnC9btUfU7vFUw1ZBkcsfFRai
	nkONjEE6e+FIqxwgj+Nu4wjevrLEXhdA7e8ZD6a7axj2EjVxDMYeG9+LiqGNDDmMFsn
	Wd/f6EH7T13uHO57LnG2vcjpBs0aB8rvCibtky5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810af1fa1c-2b3b8845-457a-4208-82a7-e2ea044c453b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6797794c786b0d6127769641364ca24ef5cbf2787b05ec456bac0fdd7ff6d950
Date: Sat, 28 May 2022 13:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653746039
