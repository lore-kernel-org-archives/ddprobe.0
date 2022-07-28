Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0377A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659049253;
	h=To:Subject:From:Message-Id:Date;
	bh=AEqmzesuc3/Tw1SOA4nyB4Oc6+HdjB4s6u1sjAMLn+8=;
	b=G9cZ6biunXo8XL38NO1dtKNSqRuk5ePo8Eop74LQ5MdB11wg9NsQx8wGMYkL8B3z
	aIa2FFuVIR+zAqUnEf/UBQKtQUbsxngJU4ge7rhb2LgdOinTVScgbfdLCDy1RqCOQpP
	mJC0M8PeAWc9NAp2O+Q+XByHnauQbDOnFIbFaA/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659049253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AEqmzesuc3/Tw1SOA4nyB4Oc6+HdjB4s6u1sjAMLn+8=;
	b=WuIDoFpYYn98EtQOo74QJCQ8GcqbUVqRT4EFp+cRmYK/MkE3gaev1GgS23J5CgUY
	AsOqCXb5qcZf77sNsOxlkHK/OX4bELSZLmj5XdurqIZj7UiyM6HOOwecdAQAxZdBew0
	oFv0AxcGLDnX/BlQT8ukcfwjx1zZGdZQHA21wgG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182470a96b3-41b79275-a82b-4373-8bb3-4d2fd8b72991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af0de0bd61a57423fe091319ca07cf06f98282c9b7b57d0fd1537a5994b3e9ca
Date: Thu, 28 Jul 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659049252
