Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C9417C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646086584;
	h=To:Subject:From:Message-Id:Date;
	bh=R/xVls0Tns8b1UYBdxvofBokrdF/xpFF323VsFdgWfI=;
	b=Xc+V5xrKs9VKxGRK++OapQipiNGREYTng+9YVu5unXsqZ3FTVVry+wcsiIEN1Gzg
	HYg2SzGgEU9mXgq8TxuMrNUEdmh6qhh06HVgCtY1a3osxJc41+UD6FbK0cF3PeBp63x
	HL8epsKgAQH6xk4yp2JMoTjetIbLZgPtgChImpx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646086584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R/xVls0Tns8b1UYBdxvofBokrdF/xpFF323VsFdgWfI=;
	b=V2lqCOXg3akvOZQdktRjIzqBJdT4+Lo/8gg3Hi/C0tePnAmnUkM4/qg3PCD2HUkK
	orunNF1+/xqkIquDSQiUjjjZVrCkUZV8mdVXXGKid7wtnaTmTN5hTBFrBHuwZ4CMe0T
	rsZFWghsE39iWuYdVeMDL0oubZ/sNSOGegDGgZY4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4267f993-231c371c-23ce-4422-88e7-610543f9d93b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbc4e912e26cda7f7c3014006f42c7576c53a541be3357af4766d6eee1622257
Date: Mon, 28 Feb 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646086584
