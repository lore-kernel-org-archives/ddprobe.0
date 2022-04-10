Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D4EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649569378;
	h=To:Subject:From:Message-Id:Date;
	bh=XQFbodreMH1hLqD4q2WNLeuANNKfnTEdXIgTrNMfWPo=;
	b=lr7i4pAXwBgF/Lr5RGiJmpR+nAKuvOSjDKoSkJBxhFqiNJ+uPwAncidkfeBrSDuI
	d0nugxgHOZF99v0qR/UdP4DQLIDO3nyzCJjXBzpmOaaHiDIhB++y8tv7HFHa/Odnqah
	SozDQax4HwES7jPBOMdo+DomZuNdBC680gJJ38cg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649569378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XQFbodreMH1hLqD4q2WNLeuANNKfnTEdXIgTrNMfWPo=;
	b=HGJIFJrmaCia3tJkHD0e3kbH7XwzFnBAidoviYhG/lHUY+/wXDm+KjmyyTFCZZUD
	gIQPrUM4tMD9/wr/GQWgGfJXe2Z4Y+VCgfv0MY3jKLhTJPgC2yL5PNYoJKzdNNugUvO
	5gAi0cYu3BDEjP/EDiB4xyEuJ1/pgtny15Abt5Rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011ff3016-4a2c466d-0ff1-488b-80cc-15e5723c255a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6179913ea09cce5e83d89b59202443ea1e59893f1abe9a1ad7f4d112251e705
Date: Sun, 10 Apr 2022 05:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649569378
