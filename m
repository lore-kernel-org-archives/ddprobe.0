Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6830D20EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657120612;
	h=To:Subject:From:Message-Id:Date;
	bh=nhwthD6pmlwZiAq2WqOoD/BX7PdOFGN8uAw/SR+wG48=;
	b=Joc9cSAWSN9sqT0LAPPuu4f2kAgN2NXpGjBrTJgLswJFgX7EZn99usbe2F+Q6fCC
	Wsm4Z9S+QSod4yl2o1Y6yGXW39weIcJi1IheNTBezndtvykFsHQokE4/aMzRuQrfr1Q
	W+WF8qkoaJDeiVdrJdhmak/JDLi0/OXBJrvgUv18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657120612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nhwthD6pmlwZiAq2WqOoD/BX7PdOFGN8uAw/SR+wG48=;
	b=j2TwySr+DMmMjz13FtRSYOfvwarF/HT13ByUQ04WpmByOXySPj+i/7zjJvFGcoNV
	GLg31CQs3BAVw4tjkTndDPUw+rt/pzyD/1mE2Mz+HBuR1ngBg10sKijD0Qh2geeZAn2
	YL0WjiBdWXxSvoofJhNDdC8nU1odA9+GCi58uHKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d415dfa2-b7825bff-2464-46f7-9125-5b1e6fbc6579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c6f3b32bc8f49f8dcfed326ebd8a6bf68ef33eeb4e887800bcaacde8e47f3e6
Date: Wed, 6 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657120612
