Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502623D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647510984;
	h=To:Subject:From:Message-Id:Date;
	bh=jMgFg/mUOswsUIiUPgdnSogKA60zkfUzhTd1eN+9p9E=;
	b=G0MCxhKcv4apxojDgFKjnBp1Rg/uJVtNxWft0yMhFL8t1DFbTLFkKmw156/DZMRT
	fqGo2IU9/058qJE0tRieAgNTdwEv/6Fx98WY1hNMnm+PYst93oyULIE+xktSWrPixVF
	IL46eYo8pvcq6XHV/hs4vVA7ydUlVQdJ6dt25TKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647510984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jMgFg/mUOswsUIiUPgdnSogKA60zkfUzhTd1eN+9p9E=;
	b=KW5cLEBHGDQIpeWx/x52dhM+qMeIU8rDAKI0ufm9gRUvveHsqVQvzvUumN4hx0gi
	+1RwaKL6o8UPUyWK0orl+7eLoRrayW1Wo1Qikofp5J7caZMmmgkpTvBWiKk7/acji6U
	hLr+dFODTCDAmZXIWaeUspTbVx1vwjMMsLAQPCwM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f974e9805-20e3ba15-e303-4c80-97eb-e435c3be53e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 891926db9b13c90ddc178ef4d55140933e03322863feeb88a9a29a6d80467aa1
Date: Thu, 17 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647510984
