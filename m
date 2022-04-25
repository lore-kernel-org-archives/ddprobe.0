Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8CA7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 18:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650910618;
	h=To:Subject:From:Message-Id:Date;
	bh=Jvk2TdutelYM+sTrhDu/oyT0RJT5KRah3VEOm0sCmF0=;
	b=LTMEcsald9K5gnDh1kzcWb7iHdXLOgCUUcsOVJm/hnhd5rCEBw997V5u6XBENawh
	kBRbrPwpsbZaJkvWa3pcDPzxAw8TTvhxLH3jQgegEZ2ohExiGaq1A1fTG1ftO5aYukG
	S6IDuhnk7fSKwxdb1qMhPHeuF21L785/CC5N9dEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650910618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jvk2TdutelYM+sTrhDu/oyT0RJT5KRah3VEOm0sCmF0=;
	b=OMTjFQ07rReF3TZyRbo57QAbFBXIO0xghEbnrZncm6yYNVdagxK7944zxjPg0NTZ
	JODhASBa9FK6pBp3hENGWPEmTatH84meiGEnlrvVFXTT3jueq9jrp23BPfaCSqBZElY
	Yo4DPtqiJvgIcQDr0yM7o/0BcxMzlAHkwmejPE+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061f0e2cc-31bfb937-9229-4cb4-9c4d-2b078989cbeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c41fd9d10b8a8a5963a74d222cc51d1cedc2b66c200ca25c2b7cbe72f8b0369f
Date: Mon, 25 Apr 2022 18:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650910618
