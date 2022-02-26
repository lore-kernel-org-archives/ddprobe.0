Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E057A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645917384;
	h=To:Subject:From:Message-Id:Date;
	bh=cIdWJx/akCI7SY6hB75BY9khvJfNouy6LcavRRbhFf0=;
	b=Evq05lfFV7n58sJ+TDddq3bjuRcdQU3JPaoe8LB8w0PJiOnmZXrJeGQUVUGGIE3c
	mWaZvzN0oz40VLlILk+8ScktmlFDFY5/4dvP51geU62BV8+Bc1Hyo8B9CIAccLaMt3F
	5Yo2r0IEowLCdQVp1T5kTBMMTsD5Dzw96pbaYICM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645917384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cIdWJx/akCI7SY6hB75BY9khvJfNouy6LcavRRbhFf0=;
	b=FQIbX8SgQOSnTCFwdJ7ygpGxdz66DTGTeSKJC7MfB0XHObO1usRsYtRLcUhRoLlz
	mJlHwR+8JequW2mM6oP3IvF8ejsaFVNO3iaRWbafPynhul2lcDOFcTdnjA3UFtlbDKl
	jZQHfhAsfhanBghRAeXwo+8a40p8sG0+3vK5tQSg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38523056-f48e5ed0-3bd5-4602-9136-e2d853150b31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 783b2ed3c64cda6ad11503dac193ae92abe80452577871cab809583b51a71ada
Date: Sat, 26 Feb 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645917384
