Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB886AD0
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647290784;
	h=To:Subject:From:Message-Id:Date;
	bh=SZOCA5AMivr2BfZSmV3YWxlf/1s0OmJLgSomtUilttg=;
	b=UEv4oowvqo06ndQWn7v/zTsUleWZVbEpCQLDdjJ8X2cTpviQOnnI4tShmZ2afQCZ
	eWDcwQjFiuG6Wd0EvIj2H4eGcsLVlZfrBqmud+Vx/0nYKSnRG16hM1FlsKFEEpFRHae
	scwuwZAT1mFoNZ6EKKatfeNWg7QJksK0ZsvuvLBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647290784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZOCA5AMivr2BfZSmV3YWxlf/1s0OmJLgSomtUilttg=;
	b=JmITZ7gAJusoKs+yAlHCb0gAnuaFiErjIWT8OEkI1HzGtStR5DabBdCEd99HKTFk
	/QcUzqEsve6toukIKMTSIbiBLWIDkz9RoU5uku9YMYNXMHZE7Rj+shR1/zPRVCj7HZj
	YpkrWCYCrJuXgEJ8NyP6uel4JH0KU6ygJ49cwpEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a2e9bff-de5e05d4-a865-40f9-8258-a863ca7706ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84314ab5ab3b5f1223b3f9c1fa48da83e7a1cc2d7fc0fa837a7c00d51da22d99
Date: Mon, 14 Mar 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647290784
