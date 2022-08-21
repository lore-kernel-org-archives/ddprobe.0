Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457EA136A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661082652;
	h=To:Subject:From:Message-Id:Date;
	bh=K/NgLd4AOiFAxw5iYS6Ow0yusVYHuebTNPVXxdGb0t0=;
	b=NzqmHBDVqW/vULevIgRjaZc47fphewq/d0BB8CvMslSt5jahvu3OUOf5QEqYKCxx
	QTmtlpIpB+WCGkayPralIXiAe544FjKT6KJZB7QLSLLuLzZGIU3IIZ11zvhoMwveUZ7
	E+6fMepGLJVO4G5QgPGkEB1F/+UilJEN4I8VHFKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661082652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/NgLd4AOiFAxw5iYS6Ow0yusVYHuebTNPVXxdGb0t0=;
	b=aRVVBBfUh/Dp4uCqzgHgCycv//OhL/ZCLzTFSsX9oCEqdsGocQdyprAyJt9yE3Z9
	btDuTTBJtH+tjS30LD65+spOR8PMMq29H8/YOnd+WRZzxoJUNxRW4iJdYmlUe2W7pgo
	KX12I55iaIVhoTMkcIMC5EROW62W5dGWlZ/Q/ttg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c03dcf7e-cd4910db-71f1-4214-a6c7-8e342b4079aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7499e804587a76ce8def67075969ed9f615515e659d78c004818c82e8f187cd4
Date: Sun, 21 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661082652
