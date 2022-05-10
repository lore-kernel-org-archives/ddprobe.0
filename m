Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2073D23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 16:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652200619;
	h=To:Subject:From:Message-Id:Date;
	bh=pS86VV1sWfyidcksEiQnadSwRHHUbafS54ShhsF5U98=;
	b=b5TOZELwZFpQ036zeOvRUMoyR/Idwp73F5RZGsrYYe+kWcMQxGH4LmGVSuiuoGzO
	zlfLW3GRxVdgxnybk+fqeMt84U/b2h5FK4QWP9cHmurVcpS6o5HcpJiddGjP5eZDV/V
	JzxSELEQq6l/wAfRQTPsOtiLzgsVrFEbi9xgNiGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652200619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pS86VV1sWfyidcksEiQnadSwRHHUbafS54ShhsF5U98=;
	b=kzfS7Jm2D0wuz2r7OcttQyiQKz9GnJm15uXl+l+EOXD2damObW3ZoEhScE1aKiFX
	ruwZQVSDXeWF6HyPjgIZY6q38JC9/6eg4QB6Jw+/TyMCcmWsvXuq4jYIrCTGjXB1dAy
	m4TpQWwz1jm02OCjOlS42b5bLUQ0KH84c6fkpTds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aed4bd40-e765fe0e-09e2-4246-9edd-fa611b02522b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe025c2796cebeef63db38ba632495c814647a2998abecabdbc5516e0df4068b
Date: Tue, 10 May 2022 16:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652200619
