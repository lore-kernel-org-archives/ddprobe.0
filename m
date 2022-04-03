Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110247C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 03:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648955458;
	h=To:Subject:From:Message-Id:Date;
	bh=LOqoTKvYhnSEs/E+4Px9LEL5jySUFWk9AGemmBoc8yc=;
	b=Mr3w6b0Xh7li2+0flU7LVo3c6Q5z3EhQLYIefRrWIVUh/4qO1nkv71A3JY5zlsmk
	8Lv+PANpv4KavtONElyHWZ1CEdgThYBBkUE6ntwt256qL3Wm3JzHHxVPZMcGH57QCqU
	WmCI1wnYAgtrK+eQhrVgkT5qrixM+A07VjK70V9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648955458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LOqoTKvYhnSEs/E+4Px9LEL5jySUFWk9AGemmBoc8yc=;
	b=YaKFnHmcRdalV5Dh21TYOTt13PdxDdSfKP3hSwEZAfFMVJReNe3YNyJBHBOqIDnV
	HIkl7noESEIsM8F322haNr8xzrfvwrXwvsn8Wbw4aWmfrGOXzuYPb6fsMDIVtxyJlys
	HnMlbiQno/3T5cmY0cvvO754ycLk3VoFMHPD+ZAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed678320-fd5c10cb-522e-4d80-aaa8-4d3b30ae5cd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04905073c004b0155e696efc7a54684ed5eb425c061b1ba6fa685b7a9e603265
Date: Sun, 3 Apr 2022 03:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648955458
