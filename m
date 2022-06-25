Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA647A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656141412;
	h=To:Subject:From:Message-Id:Date;
	bh=uaBnas9c1cSwCdfiSB4Bm02H4VikBURhwPKaAA1A27o=;
	b=EI545xVYEe5VRjCH8LXW9JypFXBEeceZzhieO/D5PNfoeeeC+ODoIk4KM/iVwqPs
	Jzu1s9hsQ0wcQjawNZ9fjdimxPLUs4JIRCP9c6zg1MnP3INAHocWk6KlX1PPOOx93Yd
	MHEBH6UdFCFaPmP8igQ5jZTHZAL95BNtiDJrPyho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656141412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uaBnas9c1cSwCdfiSB4Bm02H4VikBURhwPKaAA1A27o=;
	b=UwGR6zewUIsx7It3QoBgC+Lae/LV13715ZbYUH7hOvQgRQTRlgpX04N0sSLwA5PB
	OBKG/NDf/yIPN0jhcIw1HpD6AUVel/yfSK815M1kN7umyFDJzpQ54i8ibQHiA8prnSB
	UNqLn9gkuKDi4PQUW+JEx/GfcfP6d1GtT/V/pTLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199b877e8-88cb5a47-de1b-4844-b64c-163716ef7e69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 722afc4a6cfc8354ec48bc44eb60aa378a0c6b91c2d667dd948f5999d95ec1ad
Date: Sat, 25 Jun 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656141412
