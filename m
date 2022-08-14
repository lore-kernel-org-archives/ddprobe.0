Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57586A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660465252;
	h=To:Subject:From:Message-Id:Date;
	bh=S8gD9IDljmnT468NnR5X2WrNiu99uAUJUltWd1QDi6A=;
	b=Md53YNb8Vl2NdB4IgdlmavWT769gJVMvf4PGWqM0J2uQVwNug5Cdj279zgRPAt+q
	hLH2gZ/smpuhrI97bwIVx/g/T4GpPvt5SPSbOBjww9AQl/O1r2VFKUw3JARtB7UeKoZ
	161MZE5BaY7aqX4JKLa0xVmkhQU/pqPnSs+R6lco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660465252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S8gD9IDljmnT468NnR5X2WrNiu99uAUJUltWd1QDi6A=;
	b=MTEq9XRrZeQThUazjaMJBQOQEfQLxNBIvbzoxen3PIG9On4GCwhiyZviPLyWj+AL
	OFMAz0tLUsw+kFvJnUhELvtDsfzxnkxRzUJkv1hteX2k7Kk+EQVkkDUBElIlo+lXb+O
	pt4eaVaj5h1AZwT37ExfW9rnI90BIArGPNeJUZMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b7108d6-b89be39c-9537-4c8e-a035-8f08143fb8bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b343d079f3101ba683f6bd3dbc521036e2afbc83fe6ee6e11d21a2ecae95e16
Date: Sun, 14 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660465252
