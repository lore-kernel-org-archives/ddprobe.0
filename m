Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCA57A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 02:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657853812;
	h=To:Subject:From:Message-Id:Date;
	bh=71VA1vnvu8HQu7p14XnpdJISmkbc3GfC1Vxe4xHMlfE=;
	b=QbOQf01vAd0GXNZoT+id09qVm8vvOsqxQFVJ2QhnRANgoJ5sF98NqnqoNocnhTSg
	TQ7RFjpK1XMX234n+RQbLnhLVSSZKdZXvPu0ifdsgE/x6bJHfEseSNAy6SSS7Yl1hF7
	rDe48ZhGhSHCDZAUUfkckPN0vv++nz1Ys9+XQ074=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657853812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=71VA1vnvu8HQu7p14XnpdJISmkbc3GfC1Vxe4xHMlfE=;
	b=ZUEF6Kxf+dpTmJ6Yh9uIAmX+WggLaU3jC3RWdRUgzUGl3tBx4Dm+zCbXK6zkV2VL
	mQ0Qopwf9x82xuTeMiuu2I82PxsdqItbkZuLwApo5QnBrx0pRc4fyysw7fXac2RS96+
	wSbaY9f2AGmtIt5HOYH05m2Aoec86STfChqryxXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffc99e48-02911783-315a-484c-9689-3414a58b9603-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08a69303c80eb7afe8e4f2c1b334d2640bf4cb9e15b799e458cdea4fee190b5e
Date: Fri, 15 Jul 2022 02:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657853812
