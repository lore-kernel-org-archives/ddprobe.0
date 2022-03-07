Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C733B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646668585;
	h=To:Subject:From:Message-Id:Date;
	bh=Kd6/tBep8qU8xq6Iqchr/G/ROTKinCUL6i9WXqaXruI=;
	b=FmuYboudMhA5sfsOwTT+Xlj0gYkJWYV4lNMfhiaGSMcIvrhWnIsMPBQE4Tc78/SP
	/R8OFp+RCTSSoCWKq3cYgzCRBEF8D/5b/LKsKdifpmOXx04Jl0GRoQrTaOp2bbjvN9p
	1IYDhtZ5GtkwyhIlK7nfHJa9z5Q+Tprto1hpiqnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646668585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kd6/tBep8qU8xq6Iqchr/G/ROTKinCUL6i9WXqaXruI=;
	b=ERF81xdcveNjbbtuD/3M0q7plf9B4N2v07rMw1jE5VDGnfD2GpkfD9cpP23SZwVz
	KhR8ft1pNcqC2Iu10BUul9SvzdQnDeFX8inlXmoILF61Rgi8/ca5yKw+L99eUEA4uF3
	U/8yb3uEHkliJqinYibBm6y2XmVOnVpKlj56zRnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f65189751-77ca887b-34eb-4068-99b9-5acc7cead224-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37fd90f3489afe326eb895382e5fd142b97ad7f3cb57b67555d57c607e447269
Date: Mon, 7 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646668584
