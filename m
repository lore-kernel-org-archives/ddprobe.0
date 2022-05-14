Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF93362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652511479;
	h=To:Subject:From:Message-Id:Date;
	bh=4giR377AzA9mr04lG7Mn5qq+MwjyrsMpbsbi63cDfB8=;
	b=lTJh202yvx7XUBVEXEG3m8OojavAIusx4RcdxqearovWPUDxaax3chFyn9GRp3/r
	qbnq9A3Cbfwd5SOXHFaL5L2eoJi1Q6Xex0zzizRD1lz9HiBEbevGWsgBmHwa9a448H+
	UWAndWxDR/L/2ciTdC0Gxyis0/Yl3BaYffhohG5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652511479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4giR377AzA9mr04lG7Mn5qq+MwjyrsMpbsbi63cDfB8=;
	b=kttGvgjPT8Zvw6mnEVgWrZbtIujFYTlimI9pm4JbGKTD8aMqyZmjkXjvBXm+eAXE
	5WfbtZjjaYzg6vc7lqUyVPAM6OmfznB6/txM/yY1IT0KpO8oL+TLik/fZre9yZUx2tX
	QtuBW/HyeoNZPYziEBOD302OvTwaKQ1q2/ogV2ME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c15c15ca-105e8f70-22e1-4c3b-8398-8d3d09ba4e47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db821f0f452f7d067ada4a0552edd0ea66e19e6c89c805497f89cc8057732c15
Date: Sat, 14 May 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652511479
