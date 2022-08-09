Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648F94428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660053652;
	h=To:Subject:From:Message-Id:Date;
	bh=4gRL5JB0RWm9lJDfe22V7NMzWebCHjKqCsbmgkfT5gY=;
	b=TZdCWmSMLLkV3dwSCHZr+U0dSlKwM6uMIKcledOQKSBxh2VXxiPh1n1dr2gTOZve
	AXixgwnC4R7ij8e0unPJV1XD2edASMMCsQNvYeaqL7hFnXUnPZckflTDjB3NOMUeYaB
	PMYaUwVAbp9nHJqVFPDz6Fx+m8XLOZvpYMEW69mM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660053652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4gRL5JB0RWm9lJDfe22V7NMzWebCHjKqCsbmgkfT5gY=;
	b=fgmQim2zPuTiNcp256GQ+X113GryqCdLllvA9jNo3bDgROZ+6yaYJVsWEicWc/iH
	OdtMdiOkTv1BTeC722/U8WjZI4uiefi+42xxKH4QFzRmaLpkB1j3zuU986l/sstntPH
	6bZmYHunZfydPhIaJFBT6Ob2DzkSzzhT7LmoEEJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282e8845c-6c7c94c5-6859-4ba4-bc67-e1dc1adae819-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afeb70b2c8b868a95fb3dabcd3dbcbdd60dcdbee85d80e9374300b3465d21605
Date: Tue, 9 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660053652
