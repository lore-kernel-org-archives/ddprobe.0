Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05BFB7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 17:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650820978;
	h=To:Subject:From:Message-Id:Date;
	bh=NCgrrbtYgEynB4IiH6z2TCIG1YozqlYrVNL6KsVg+e4=;
	b=AhDx86gaoPuq2Gtr61HyciPRHaFPMAQ/93FGv8Fgx1huQdWYoz+mA64Oc0nwfasv
	bgF5TmJFRCEdTY+gxjLK60GvUnq4auQitzYE2d6m88B4hK4SU8hLosukQv33yipms5o
	ARkiMH8jmM7i0wOOmwwzPzmhkOMkwXUY5c6xLiGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650820978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NCgrrbtYgEynB4IiH6z2TCIG1YozqlYrVNL6KsVg+e4=;
	b=IDP3TcZ6hAUcuK2VhTLDl8DKWi95kL4Qh5H91g1V6VaAX7gmtiEy4l/O9lj8V//D
	ARM37dPKr7FnXrSsg1e2uovWtDCnFNSJ+ud/zIrFCFdAcZcWUUeQOtRGOTTgHSqXtAo
	/3k4Hctr8g5ftpTArgGG8OxqnUOoF/SSnbcv/6AU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c991692-72f03216-e3f1-43d3-8118-d015ca5a3c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e31cab235322a836211964b369eb201932ff4ff2d27bcbbe847c5d7f4a21cfa
Date: Sun, 24 Apr 2022 17:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650820978
