Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED2B323F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 19:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655752979;
	h=To:Subject:From:Message-Id:Date;
	bh=5/p9cR5wan96A8DuSjRm91A925FvnZKzyiVSXf66dwM=;
	b=WuVhy2NlwmKlRgIu7quhg4UJm8fF2R/z6JbSCEK+nSVhI2P+m6E6y/dJHyByRhl8
	xyOQ9OmvOf31kK55MBVGXu85gA25Q4CjM7ylifuMpacaxGlh1YHM7xZ4t5QqLcvkjeW
	fCkczHP9/qeWpjs2+KUb2Of4C8M7lfMjWkUl4+24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655752979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5/p9cR5wan96A8DuSjRm91A925FvnZKzyiVSXf66dwM=;
	b=eK2R+MNnQYijxH2gYQm1C7CwLLRm9XVMjt3WC8+WWZbT1BKiX3ajGSjDXCgePGBu
	5CNDGVToA7EOVMIt5MsQ7OuJjvmgzZuDuP8CfS4pV/i1N+K+qSXh22M/HCv3DR/ZIj2
	eq1VXITSmXPjNMq+c+iZuUXWdbgKoylh+rAo6yIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818291734b-54134ba1-3f5f-440e-b0d3-6978cd278e5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb0f87d76b0466df0c16842a41800fe54d3dcef57b3af7989280f9038ca0176
Date: Mon, 20 Jun 2022 19:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655752979
