Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313A223A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 06:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654496699;
	h=To:Subject:From:Message-Id:Date;
	bh=qXaROKwViIjVZAkIfFrHpynw0CNDYhQp/m9hr6yceps=;
	b=W4mP/yBPAdGeQ2E7mDAvfoHhQqXSt4yTHrBhTM1yj1R9Pv4B6ov7SQzprk5D7LFz
	3KTnO9fhTVlO7vqslh2oJpCyYyn/PeMmyf0qcr1VfeMe0Z2dgwCYHLfHRpwOvueQbIs
	bFQFnQ72mOtPuppoavaLFYHKI2woanxz53h4jXjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654496699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qXaROKwViIjVZAkIfFrHpynw0CNDYhQp/m9hr6yceps=;
	b=JdrsaLPb/ivI/rdItHAMjrIZwrcP2LFnQN3Hev3uAYstsLf5hu0YbsirYhKV7oFP
	iCUNWLG4meLAihPDSusTY+exd73HdCsemge9ljLuQmZKf6JNEWQCR0q85r0tVP38K9V
	AoDubR4dljyUVxUMdzG7xFOqGp5zoBm9ZYx2lh10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137b023ac-f404ee47-bc0a-4f5c-a09f-f0f10afabd8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26088b77ab414d04eec31c83f23de08418864f405b02c0f44e0b04867daaa44d
Date: Mon, 6 Jun 2022 06:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654496699
