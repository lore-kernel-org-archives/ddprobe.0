Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9C57A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650521758;
	h=To:Subject:From:Message-Id:Date;
	bh=8O30DVR+O8GJhbXCX6zzluDt8IAdvr+BFKmsmumLZhg=;
	b=mqISZ6cYEunWhioO6oRspVwfw1tvl2UybmyVhECAIlOBySx6jjMBh1Ea9ZadYvsQ
	qbGD4evbbl5EFHULGmKmrwD1mwIsXTgfmtbBhimQL48QFt/ID8xalK3m8D55bpEkXIL
	4MfagORWP5Dd6vifhFR1Gpz5YrLOn1fiqLB2KinI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650521758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8O30DVR+O8GJhbXCX6zzluDt8IAdvr+BFKmsmumLZhg=;
	b=EzYdx+Zy02T0kOf8Hwvf0SFr+UheU2+wXtuz8yJK2ezxl+RgeD9N9unk7D6ip+sw
	lkWH/HYqu5cAlbObyGZAibd7MkdTqSdYjx6UyQdI1DdX/sA5iiQcOWJMTHPfuN1grBt
	iajD54Y6+8GpOMJePZxbcTPM4ulMgLSpk0888+Sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ac35a45-2796d909-c36b-4454-888c-3f0a5309c3f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8f351c2f861607d84ef1699d214bce8c945491685e15fc15907f7ff4a1cf400
Date: Thu, 21 Apr 2022 06:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650521758
