Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6096C33C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646308284;
	h=To:Subject:From:Message-Id:Date;
	bh=/bkb+6qWD4jdcQIEaJdTvR4OoUWO3Y4MKtbi6lnwuT8=;
	b=H3AFWx971rqrBEVRGs8lzlMIuWyU0sDdt28UL12Wm8V+TAi+3tSMpzTjsQ1ma9pb
	oOYKVtymJSSKzlVbiHivZQDeTeR3uIgC2xETmS/s9HZ5lkqUjOOFL+/BlaliXfTsIng
	Sgc6RqjJrh5/wk/vUszuwZq9BuvHdmgHNEM8uohQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646308284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/bkb+6qWD4jdcQIEaJdTvR4OoUWO3Y4MKtbi6lnwuT8=;
	b=R3ulcM9BuosOGNxHcKV0OmLFbhin/LwCAY7vS1OBsFokycd/LNeP/Ip77mw5xGNE
	iEhoPq7+eKAg0bVDdvY5o2c5i6ZqhvuaPmp9DQfi54TQtv8n5grTTAt2BD9MDeJg54N
	DIoLTMAUaEO49Zfd/kp3d8317o0dTIMn80yN/et4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4f9ed94a-7b281841-fcb8-4322-9976-98520704bd4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a74f7b8db8d85f7468eea1dcd77402a7239b989236bd6974664537714d010572
Date: Thu, 3 Mar 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646308284
