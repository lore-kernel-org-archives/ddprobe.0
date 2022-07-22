Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0086AC2
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658514412;
	h=To:Subject:From:Message-Id:Date;
	bh=VUZSv/PfgwnGFWMZFwCFxHlqA7bRdcSJuDNZBOs5iUg=;
	b=hFBG8WX2/pww8ZtR+W9RpB5r9YgITj+Wnl6whqKzZ0/g4tvANjVTot6GKTjg5XMH
	uY02vAyelxzcuD+oUs5XG1wMk0wS2XP3QeNkGqJIA0LOzCVQEX1bGo8Yx/C0GsLIA6+
	RL/7h0k/tppWHj5Oa34ZC1vL24KHdSYVePLQ+NTY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658514412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VUZSv/PfgwnGFWMZFwCFxHlqA7bRdcSJuDNZBOs5iUg=;
	b=F5VzLmSH1BJa0OAY+cS1Gkq8OyQ2Qny8BDOYJgPQBl+Xh1bUXieEWlaIAH666SFv
	Y4t+RGg66jMS4hhDUEAoq1xSANJOCzDiZuXSeoaY/f4c/UCITA3U6P3D90gGI/AVFkx
	sOZm+a2oJmWcIr2rrr5XXYGooyBIN5eJuYIni8vU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822729934d-1deb6527-133a-4580-80c2-95c5608c7999-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18004e0081c31a889dbe1f7af51a4b6c139c8231982b4d60e112976ec85f1f14
Date: Fri, 22 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658514412
