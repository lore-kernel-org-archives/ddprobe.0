Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28613367
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650172678;
	h=To:Subject:From:Message-Id:Date;
	bh=10ZLarzEPthjRTy2jN3nTVW8zlOnYa4yQ7bUgC/s7o8=;
	b=iZN9xaj29B0uwFXr+r2oX4FxHknJs2O+64C/DQ45BViZZWccc/szzN0KmaAwyYbJ
	stuasWwhyIDjlfY63QDSq9zreMVDm1K4BqdbjGCus9E4H67vlRtd/Ppf20QRkypWpsS
	agBacUmz62/nXnNTYgp29aEuDCLVcHYes2K12R9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650172678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=10ZLarzEPthjRTy2jN3nTVW8zlOnYa4yQ7bUgC/s7o8=;
	b=cr/LL6/PIJ9gWO9hJkBZ8BhmMhiKlqnKYGD1MbaYXioWFre9nsyokphTV/t/DpxJ
	M/4vPK9C9WQbA5Roxvi5boQ9Uib96zx3d/7LMWKBudYtkE2l+mFS/dGhSJgVhBS6brl
	4ede1OVJzjxQV5JU+zCJMpqLW02TflWWyC9+r1tA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035f4d07b-f1253fc3-2ecd-4ec4-910f-3128aa3b2a29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5d0be79ca4708791ae67e1b5da22dbb56bdb43692603b45df6ed3a899f17c70
Date: Sun, 17 Apr 2022 05:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650172678
