Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B9815A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658499412;
	h=To:Subject:From:Message-Id:Date;
	bh=K/JwWyd6toZiGHNBR8wIF7UIyhpWmcRAcB7GNlcTMug=;
	b=XdIscluMa0hgPIuObaXtcJ/FJxJNev/7C7LZqZa83A3yySJJJ5xztJBVtMq85Jbd
	7dca2JhDEcDhi+xOfAjsS4uE/8194etRI92X43TP9XFZBaLqugLFsD8pRQiwTC6fKNt
	EwM+cx9mQkh3G/Xwz0G3RED+KQ892BgxPuZSpBRI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658499412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K/JwWyd6toZiGHNBR8wIF7UIyhpWmcRAcB7GNlcTMug=;
	b=Ix4zNtxkh21THP6c/peXBofgwoTau0R9dAdQwNQscUVlFLcSafNA57pPCySW1bXd
	m9hgnYXJL3Yl2DYjM/uOWRYrt0qNAeJbT2zXluY+j74CWlWIbmysackcyhUFTFuu28B
	gWTJt/kmuIAZcxeEcuotrsJXvTs7KEzLVDGta8sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822644b163-bede8551-dd56-4cfe-bca1-d02bc48c28ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30a2c055d2d21b5a59fca8175955cd13c2c125a0813b46ba8417e6a3f65345bf
Date: Fri, 22 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658499412
