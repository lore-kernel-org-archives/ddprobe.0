Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0831C658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655700539;
	h=To:Subject:From:Message-Id:Date;
	bh=TO+LRzNkt84oS6fI8ScKe6rdMcf5Udsv2zUml8FBu0o=;
	b=EQYXcD9p+HZPCvLZqXyEBqUOFAlF8HWn6LV7oboKZ2r7nw35J2z7LhoogPvZpxj0
	qMv0NJmVMy347YsP2NIhiqwawArPqMoWHs2qVAqi8cZJc96koRxj34/NbijQ2ZMFSUt
	fW3owvQcWdWfZPshWAfirDT3GlW54RDF8pHsq0TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655700539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TO+LRzNkt84oS6fI8ScKe6rdMcf5Udsv2zUml8FBu0o=;
	b=YqdfBtFgDREkcH85oVXAVfNB1/KuNKyks5eJ31Veh39IeeXFU3Sefer4kDSup5Me
	erZTa4h1SKR6pGIo8FmW7nzVoZrs5EPNhePUuY83zYhkblBRT7FiuE8LbHMqNiSqxfg
	3rDsVoldU1aPgSJhAwZAmgk8+p+lV7uTBKD0YYtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f71474e-178cc739-9123-49ff-8808-47a41cbfb8ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf9fcfa778dba7ff46474754fccc5c27f8583db765634d4d8a6aed57a9e0a213
Date: Mon, 20 Jun 2022 04:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655700538
