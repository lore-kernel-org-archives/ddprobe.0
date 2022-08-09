Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663D915A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660014052;
	h=To:Subject:From:Message-Id:Date;
	bh=WrqjuvoimDMcgW0ChJsYsebQEoBjOMUMw58npiZ7wdw=;
	b=biywmVfdJUItD9r0lqAWrxxC2cmqKmc7X+pWyfivZx076NgqttCL/3gxcg6Xow5q
	3It5TggDz1ENXu2DLDFCvsea63Xq6/Hqws2KFLYshEv+blak588XnXU1MP4zKdztDN0
	cgCjiJPZqIng+wJPOPcoeMcb4a2gNi5t6ELFGDnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660014052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WrqjuvoimDMcgW0ChJsYsebQEoBjOMUMw58npiZ7wdw=;
	b=X/gPbYTUfkrUEEMG4cDKsZiQ0QG9i2AYFtzRiDwPaoUfMGc/a3om0GV4Z718PQMo
	fn4pexDZ4+cyNCCDhDi9f47setzxyY8r0qPDR4fCmiVyoRwT2ljthd8NcBe4S0HUUZ7
	QYwOi4P2QOM0Koi5NFiJ9Y1FMwM6xBoiGPYBUZsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182808c44bd-394bb4c2-eb62-4155-a43c-9ff88a2064a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5d10c2a48f650dc0199c88b27f701ec774239e48bcc9b3b0873d49e561f8d84
Date: Tue, 9 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660014052
