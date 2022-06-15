Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C1C7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655300699;
	h=To:Subject:From:Message-Id:Date;
	bh=xQdIa652+Q/tJHFOf6FcQPNyeXP2CHrq7qyHqnfE5vk=;
	b=au4xDXdGFpdbtQTTY/mbS30Ldifub3XPRn/7M1o9hQDVntVpek+GUZtjb6ymmHOi
	WMTofkOUTAzRx+oNYKurKZhA/EzC2uJTgp1ZV/86aC9XuZA5UuJGnkEzkzwVnYX4S4g
	GCoMwbjLjYaN0/lzhGbhoMPvvhXvvynhHDPjEVVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655300699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xQdIa652+Q/tJHFOf6FcQPNyeXP2CHrq7qyHqnfE5vk=;
	b=B2Qfrf/Ob4RDxpoIHzBt5V8kxx074GPSQaKWr9F+8pY061h6di5k0C2l9iQMoVVx
	r0PMHoFRpB9Ig47VBJ6pV5E4kkWsEkLugeivKswHkCRD1CQxdX0GIBC5Pntb/FBFy/+
	CgpZbI0hoVo+SguNxt4ckg1nTFIEmFlAb7E/N9dM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181679c34a6-b5416f7c-0d2a-4e7e-ab59-abb9f0249623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cc851b70d8ce318aaba6bc11a8a6515e55261248690dc58fbb773c88f4878ba
Date: Wed, 15 Jun 2022 13:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655300699
