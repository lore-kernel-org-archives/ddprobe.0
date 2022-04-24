Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE3717D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 06:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650781798;
	h=To:Subject:From:Message-Id:Date;
	bh=twEaoQ1WILI8pydln1jug2I7wJy3DEt4NOz2O2MmjGA=;
	b=ehPoqWuYxAGfd0nuG894VB2Z6LOhtDe42AVmQx2s1teO1/x7lXQQONdk+tNZJ2Lq
	LtTw/19uGUr4MrXGo0+CHDUuG9cY4qnaY34CEh8kBDa6tOTAK66UX6NYgmxg/UZLJ2i
	nEADKKLHYLuVDnX0yX4XmQ16IJ/IihFN96Qo+u9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650781798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=twEaoQ1WILI8pydln1jug2I7wJy3DEt4NOz2O2MmjGA=;
	b=DtM5hCCtRCxMI3x7wUHpsfra4fjJi1MC7BWBtR0i3LUGmyb4i43S5GMm60ALgq92
	JokhuLSRSZUz0lmh3+k9c/iPmqA1/H4g1OnGmANVkxvLgfqQC6FpYhKdooDtsx1R5q1
	d+hY8DwaViGjdwhQjEmsoErWwXryjoK6vgAVzg/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a433f82-84945f7d-c28c-424b-9acd-4f20d608306b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84ea7d191f19731aa07d683157c51a2bbb9eb28f41df1e6d27f39be0b7522867
Date: Sun, 24 Apr 2022 06:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650781798
