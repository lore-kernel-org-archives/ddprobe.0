Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E376E7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646913685;
	h=To:Subject:From:Message-Id:Date;
	bh=nw4+Smr9F6P79fuFlXxAcVI8L5RCupPKWgf8pk9ADSw=;
	b=cKbz0/ZhySU83jfD3uXgYIFTiWHl6vAC3tUMV2SX1MnYX1S32YQG1oftIKlHW2Il
	6OyL6vSn4sUm3yaBtj1tMF8Jfy+FpW/r4/LSCe6rtt+DzTmlwDLCuR0AmYwOs3WfDG0
	tJDQNCLYQ3L+abEtfyKevCkg01qykfAD/ZGnVQow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646913685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nw4+Smr9F6P79fuFlXxAcVI8L5RCupPKWgf8pk9ADSw=;
	b=RIJjdi+pfHhIZPwDj0k/HXFnF1zQnu+SgmmERbwyod1S5Dtrv7n85h0WaSAiZth2
	5oIKTGLAq+aaDPv95wB3QmN3XV+hVblb96b0YgWWxSSCAUyIWVx4X5QS+YNU7p1v1f0
	iyFTk1sxi6gRGSyeTK/dLFFjjStznICuCLcSj84o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f73b48531-5c29d792-58c8-4f27-ac18-f7281c4b0e28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b58c4b71f18b8c8276ee37727d739b14142872171431238620ed0cbf6e7a57a
Date: Thu, 10 Mar 2022 12:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646913684
