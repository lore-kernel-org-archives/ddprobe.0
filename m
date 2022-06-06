Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94E21FC8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 04:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654488599;
	h=To:Subject:From:Message-Id:Date;
	bh=MTZJ8U6kI0U++FyipGfXKyp5vgKdbVtEaBPvUb+SpGc=;
	b=e2EGZPGlv6duFXd+R9MeaIqWzaGiKWAoKMwBZotOOcZhekVctsfL/yNBpeS/9/r5
	WYIc/dXGOEFL93nZE07xl3sdqcI3WIE3ReShxAd+eapb9kmEo4HFThqU6Vherf4m6WE
	QjYbOzitKARjPNRcZkHZqH2/GTKwz6PNLhVFEIOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654488599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MTZJ8U6kI0U++FyipGfXKyp5vgKdbVtEaBPvUb+SpGc=;
	b=PxhqjVkX+TE+VYQOOQUDHw/7aJSz6Zkq52w0/+iQhPt8RFV0DAgVi4J4FfNJ1XPa
	7gikXELyjdsFzWwCTePeGfpf9aZ4MxF87aqG6Qb96R8n9YjupFa6kJk/f56Az+gSwAU
	1G0MO11YSYiZHKmXY44qReI6wrZXUlHREYRNPtQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137348adf-fd0760c6-dad1-4f76-a6b6-e363eb0246a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf92a842dddd5e475a9b9fc9142caa195ebd1771fb7a5fa1145a833aeffc5d30
Date: Mon, 6 Jun 2022 04:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654488599
