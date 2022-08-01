Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F077F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659381652;
	h=To:Subject:From:Message-Id:Date;
	bh=rbkV+BBS2j28N9d31MupN+cO5YCApJSP4I1LaLcv7VM=;
	b=SkTybDMd5LmIESMYEDjWWxLcXljUEh3ZHe4tMFyYsi0lLm6HbtKE/PhzqxT1j2uY
	Y24cai5VoK3rU6tt8WywMc5iuyeJMHjhJYmtXyw642nCgObiBn0pkgFD+3peRKMR/lq
	wLYiNx+8DUwxttRyWdYUif2Z/CaAQ+jy5cY0DnDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659381652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbkV+BBS2j28N9d31MupN+cO5YCApJSP4I1LaLcv7VM=;
	b=B6fYNckUxNYDiDeMB7lOPts9UMN+pd+xSfmb7urSGlHMrD3LmzeJ/5ZAr8owbW5C
	9hxZ50RJYEW6K96Z8zXaGRGROPupyHFSm2rDasTzje2qSlVnxFWAC+psJnVT+RNc/JZ
	NXgXZcK7Q4CexErlNST4cuM6NvAPaQLhMYlqHxuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ada9c53-ccbd283d-b654-4d1a-a37b-97397c3be307-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 387fe3e84c4ee14de175a255d0acce076676063c78db1b72904b9bb44e4d0070
Date: Mon, 1 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659381652
