Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AED020E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647744984;
	h=To:Subject:From:Message-Id:Date;
	bh=DoFN43QRz997z2ANhYIJLG1ZoUN9VcYUJ+89p/f4548=;
	b=X5wDtKIGJDwq/N+juIHy4qeejN1aGrW3JQx8vtye5GWBpdtCMSR9+I+JaA2tL9Rm
	IIDmDnXHUQS6Ue14jX/kCsBYwcgF/3KwsziehP1fBlZrDi9wLaNEPbYEPjuAIHHQiPs
	ZljESINMXnyVfBrvOuwbwDyrw97sPH7/ileG/rks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647744984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DoFN43QRz997z2ANhYIJLG1ZoUN9VcYUJ+89p/f4548=;
	b=jvrqGiwnJSAjkafV9aiRDpeGn1n45GdNTVU8WVp5LJp0zQPCkX0MZq9rvtTlswwL
	A944bkxMvwiYkt93C40+/qKQIf0LXu9ueoyq43j6CD+iYm+vw9lazQM1l2NVQMEDiWk
	MRVs7jeTa1yrAy4+XPH44Uqa3+psd5ICrGguJ03U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa54126ac-18bd0dc7-18c3-485d-abc9-6ebbff537bdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caf81080bf8e72ee48c82efcbb2445451acbb8bf68ce73577eb5c0a44a381ee9
Date: Sun, 20 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647744984
