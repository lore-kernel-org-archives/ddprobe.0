Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69123538F
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657127812;
	h=To:Subject:From:Message-Id:Date;
	bh=NVPj6N+hMOyjOZ6OQNNzrRfFlwy43MAjkPek5BtK9hM=;
	b=iegvCO7UWEtcTdQU5vKAo+nL4vvpijYqJy1yjD3kfjRfCHFeg3q+go457o/Zdoiw
	dqHxaMD+HbSMgG7vXE7L/Kgn30JHbqJoobhWWTukwaAYBgxesW9SoucROE3p39DICSP
	dEq77ZVE+hzJgasq53uCSx70MHM9T+CsNnayC3kQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657127812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVPj6N+hMOyjOZ6OQNNzrRfFlwy43MAjkPek5BtK9hM=;
	b=JvQrAjAUX4ctm7INXdTyRpV0EKoS7xPrlBfmKoHlFBH03vrHKgjfbGJxJfSiLJcl
	IhVU7pUg3pFIO/uinP6/8CMIQZf5PIaPBMnOVeISKSjQX1k9zbumQr0yjttGiN6aUQt
	q9ZTWOkjZ2mUaQhKx8HP8yGiOSa/UtMGSCiyPwqE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d483bc94-8ac74954-a570-4372-b394-cfdb9f071be5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a12a308dac7c26cf35069602b7465433fe263a161dbe7681d78a728906792bd5
Date: Wed, 6 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657127812
