Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E112C2912
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 17:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652204219;
	h=To:Subject:From:Message-Id:Date;
	bh=ZH2rjycc8s9vmAUyiYNEqbc7/GndogPWfvgUBTjHCUo=;
	b=ckjrimmtT2bOwXA8njwzGdmWRPAao40o0BCbfP1i9hOzA0VnLLI4uaVY9CGqLLKY
	tZ5dePhr1dqWHCXsc7kB9cd9WFFTkTqLVJgGtmQ9q4kyZo3naflVD23DsGssXrwwaQv
	VChGb76uQps6hOggOKKUQp6E5Ri4Km2LdF58if7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652204219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZH2rjycc8s9vmAUyiYNEqbc7/GndogPWfvgUBTjHCUo=;
	b=FA43EGY7WEdzhv5x/UM44DVEapliauVdXDw8qkSOBRN9yuz34pxtPt0chrQoMlvQ
	5KKnbnMKD42lIqSBU+YgHsjOfW/vQatCX8UzQ0m7oZEOf3RDGxA8FSXdDystqIxOje6
	NDpgVrRgLOiGRtl9Dj9nDx9su4+bGKhZp6+XtJMw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af0babd6-f4870455-7294-43e1-9092-3934cfdb562c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c16939b3a7b58a4ac067c29028765ceaef6e3f51f1e8acbadd70d33831997c0
Date: Tue, 10 May 2022 17:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652204219
