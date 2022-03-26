Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB5C7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 18:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648318258;
	h=To:Subject:From:Message-Id:Date;
	bh=1GgjX1TBZgdmPLAdp57Ys0x/AcK4VOVfH2ZjDWb1IOg=;
	b=YXddYZcb8vEqHa6nZGYO1aD/6SFmr7qiXGV/EGPAr8wSrodeNk+oswQdtkZotayH
	ZZXW8EJA67wle4OahLOaJ1SfsIg8VJZzgG2lmSJg9jqJIE3YjGkLcuBT8d8fscqHiNE
	v2bc/KT5Yho67WbtKAioJ2PsSFCMbRgqK00Y3W7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648318258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1GgjX1TBZgdmPLAdp57Ys0x/AcK4VOVfH2ZjDWb1IOg=;
	b=i1NtUce/mW4oa1O1bWQop9NSdUh9b8PegUuigGvvJRnUduQyMjo9pkCNctfIY8js
	OmUDWXgEMhpaAiTVExCB4/lNHE9aolvLgttPTe/B3JmhPS7UbwrzMO+XhWGl2cLqbmH
	xncQHXFQc7XLAWOadDwBUfMbvEO6BK7Koq0Ublbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc76c9c8a-63d872b5-36fd-4319-bf92-e7621ab26691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5ee6354653d5d04c47db657aede2938486121f40bcc29175d36a237c977ba4c
Date: Sat, 26 Mar 2022 18:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648318258
