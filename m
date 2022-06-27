Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85A73235
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656343012;
	h=To:Subject:From:Message-Id:Date;
	bh=myQaPxh7zORphrBRfCDL13y/c1T3mLDntol8zH2Y9SU=;
	b=JydzwBKbfUPhy4iTbdzzBWJ/rKezcrYaBEDz/kYDOqn2pjodPfOOGEDscPC9THQK
	MxfO1QjV4pQEaCwQCfxBomVj1sG9fYjhBKoWiYcejp2HrjZzizg7F/txNYdcedoqGk8
	RbzdBEZPgLFdU9I2NSaBbnWyaPhBH+R0S+rd6gk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656343012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=myQaPxh7zORphrBRfCDL13y/c1T3mLDntol8zH2Y9SU=;
	b=UREt5YEdV0A+9lYbwaW7VucAoWGy0wYjAknTcmWAPx7J0/02AyatWafBz4TTDUA1
	8AfhFtahHIn8qHAk1JD1moR923t9FgGnEb/CX7uV9DK+5m8KnsPNa/DwEH4FqJEIGmN
	13ni9segMeGWoXh+f7n6Nl4SUuy/rukJ8P6RsJjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5bca3ad-ec062019-4712-4c91-a5fd-9f8a0d0bde9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1910e942827d0ea2d066b1cb68509904f706fac41146722077f954ab79b85036
Date: Mon, 27 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656343012
