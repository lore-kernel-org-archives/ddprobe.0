Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A26181
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 01:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649293738;
	h=To:Subject:From:Message-Id:Date;
	bh=Ia/Tb85dOJH6JG1JFF6JHXoU5bACAdDLBgnx12eKabE=;
	b=fKGSAHfa+BjtphLNeGDKiW1mB8xa7rX/9FAn273lWHLWpbAWqQ3BwVudUHI30QGn
	teNhorbKjf27yeEdllAKjLbNNLP9LR+c9wfU+bsXveKYBx/Bvjvaa+r3s7tT4nn1dul
	ia5jBcndpFRk6NS7dajYqRF5dpkWOL3xSpoL9LiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649293738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ia/Tb85dOJH6JG1JFF6JHXoU5bACAdDLBgnx12eKabE=;
	b=J13g4HtNLSnvUg6QyJ4ozm6zPXD5m2q4+liVE61u9hyBSFMI9RRxd83POZsSnq8G
	Q1l9fhwM75sEsJ1mDds6GZm8iS+GlAq5jqs/skrRe5Gldz4q/roZBDH6956S9MFsntt
	aM8Gb6Ydxmc7emC5fzHlHn/SEkJTCOETlOuq744s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018001914112-1118a228-5379-4751-ad28-59a474bf9d8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc77e17b9a2038a433638b9c02b6c82cc5e07663b5c9a41ea728166b2bcaee2b
Date: Thu, 7 Apr 2022 01:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649293738
