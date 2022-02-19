Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED43539C
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645276585;
	h=To:Subject:From:Message-Id:Date;
	bh=e9MbBEQhyhaCbyiDn4J8UBCMIHXlxvFsp8gJg/vOltk=;
	b=Z2XG6o47mXp3HpHhSn/Wgt14xT5ZEPQnDuN5Xu00wnEyWmZiEc69GIc84skA1Jc3
	/89CVNVpnAwsTBzuXsBvf0mQwx0mx61jfkhsiY1EMQZccOwXqChod81Vd8RIXuQi2t/
	jIP8tHU0ZKCx4Z6mv0HO/dTyGVoZoW7BLIKENKYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645276585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e9MbBEQhyhaCbyiDn4J8UBCMIHXlxvFsp8gJg/vOltk=;
	b=T6m52ytZsTLYJy/gzb9GZjjJJSzXBoo+yRZmh/P9UO06uqAz8lh2x8oMM+ArQBBI
	5qfAOWk/qaYjNnyTfdeeGiofsGaY+KIiq98JkiT6rn5HLWGJrl00+B9bj2UpuRsAeZu
	dgZwLHOq/VnksCnPmFdBf69Tf3h2wvKKN7cWVaig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12205b9a-a4ffdeed-f2ff-441a-b3bf-2f75a85271fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2102208700ffeff32ced55426119d1cac87adb18ac3f286a4c64bab395260c9b
Date: Sat, 19 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645276584
