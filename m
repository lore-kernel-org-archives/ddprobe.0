Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B671B4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660062053;
	h=To:Subject:From:Message-Id:Date;
	bh=hOwYX9oojyzn9J0JXTToW3o+jwb2jNCjSRdZsTBHcNo=;
	b=XNodbojxkdnDhvvOvWnq27S2vfCRaB3fnlTVF3EPy3Rovvf7TCZZaEqWM7Ycv2Xe
	Af+/YDutBPfj3O49taMyugIlnRmmwbIwaC8XBIGeX0xVhpuq726Iz17rg38abXE4PVX
	hNkSIET+gJd8F1RmKigOQ1ZWLAb5AKUi4A4unOqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660062053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hOwYX9oojyzn9J0JXTToW3o+jwb2jNCjSRdZsTBHcNo=;
	b=h5iNXhxJ2YDHgWUww0Kpg8Tn37GID80IPZnTZFBNURLi4QAQBU04pjSiKtGTFdna
	CmIDsrf/G5/zABS2cb6KslIjzGZDfvyngLpIHpmojXS2gcTsfcSIg/k9eMqyq/0zX7d
	IdQp4zxIAwXOaSRs8FYukCjmq5CwPmiYntTqyCBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828368b0ba-dd1b25b5-f55b-4502-8119-d4a0dc51c79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5f012dc8d2ab766633cbc530723e7019d66cba29f4e46480ec382d5a888c2f0
Date: Tue, 9 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660062052
