Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616AE36D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661049652;
	h=To:Subject:From:Message-Id:Date;
	bh=CiKidk6vq/9EI/byNDqHp+JAcrsns1zrTkpngspIMDI=;
	b=DsZ0NksyUAEBfFH+dbMehc6U+Bx/TObR1CUspxgZlo4XyHuttj8rQe4mFN3wlbR6
	FVYBJsMbaipaQCZck4VyUbe5v3M91CzepYxI2h8BYF7rN6IcZNmhnu8CwTc3I6nwy67
	Tt66QX/Dh5UdILUnqlILWrvzObmS/3jsURj1TR7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661049652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CiKidk6vq/9EI/byNDqHp+JAcrsns1zrTkpngspIMDI=;
	b=NETDa1zE1aAewW6DHbl4EG4DNf4CxVSf/lIkF6grVy+aN+4QDf/pQDz4qijNf9y7
	Di9/EVW2MEv5IZvR4Uu15sllNVbts59PEY79VIrVpyw3X1o68J3TbZJqr3mSsbzuSIN
	jtbupUv5pMe5TkEwURgSsUnuHegg9fO3Y7V31xdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be46454e-b355b6df-a3b1-4791-956d-707b5a014528-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbe9989f5cce371183bea077ac749ee5b4998417a1a3df196245172421056c6f
Date: Sun, 21 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661049652
