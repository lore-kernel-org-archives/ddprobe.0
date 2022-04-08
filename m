Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF7368
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 08:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649406958;
	h=To:Subject:From:Message-Id:Date;
	bh=vJ7Zj5GmJiKGnhj8pQ4wVtNc5rOzpqsFb4+80VEIt9s=;
	b=FmMn1yOkRQ5NyLpvIlN99GAY7kT8zt6E1sAq0JE8e/P20Dte/t43AdV01ItCGBmA
	PyCAfzgSDtHGCTgpdr9ca9AQ38oRevmFNauM2eov5Ow42ujewo6FYSBeDZpG6Memycb
	OYWe1sgAEyxB5BcT9vofjmAQ/9haPEBOqG+fgk9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649406958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vJ7Zj5GmJiKGnhj8pQ4wVtNc5rOzpqsFb4+80VEIt9s=;
	b=aPfpvr/bdEf8Fdm4DVL4heJnkfrLddDjyTE7bxC3hgk4ma+YYNK6VNWnn2ufyDi0
	3z8Q9rNYeuKbx7txd2mogA/M9/Yaxfxd6JwwNB8iEaVk4yBIwQiS6th7wJTTk9/yD1x
	DRkM1cKtwvz/UTnX+VPylztUnhyF/kislt6n+7Oc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800850dac1-5c2ab3f3-b30b-4110-892c-e40c521df56f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2939c89456e10b5e89dab1a5ffe735c0d0a848d4601736db951bf8354bc865d4
Date: Fri, 8 Apr 2022 08:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649406958
