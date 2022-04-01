Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9FE1363
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648852079;
	h=To:Subject:From:Message-Id:Date;
	bh=K9c/NeH5yN20376qsU8haPkAwEPeyEd5FoblB7suK2c=;
	b=QPVK2UIkM760+lqkIPnfFFZdFUvpLC77IHBpGtlrGtUdKUw6w3pQr420thnzmDst
	VjgDSL74UMHl78I2nI5o+stS2fwJ91drBOoB/UZixxLyjEpY7asfvJgjWS52V+AalqV
	RFnUqn05SIz/OjTRIIEegWUwHI4LBTQbFWXrJ0FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648852079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9c/NeH5yN20376qsU8haPkAwEPeyEd5FoblB7suK2c=;
	b=DzLeDGix8z3lLfDYW2CRvprdWTh9yMwYnuAIsYcOuVt94gyjIWtgHyNkTSs8LT4y
	N86Y/PUsVlGe9WhxxbJFx61BLWmNiIebOhTTiHJF9Cb5nSzFLZdoplzlWbiiD+y2KHO
	Mlmw61wQYuYbu0MWdJLHkZ/2sQcCGFamWd3g+g3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe73e0edc-53cf9233-b0cc-4b99-b43e-eb9a0862a6aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5c50c8ee9f9ecc8cc4d9a1e9166c0792b0773f26225a539ef4aab94c3c06648
Date: Fri, 1 Apr 2022 22:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648852078
