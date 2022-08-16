Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38031847
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660615252;
	h=To:Subject:From:Message-Id:Date;
	bh=t711FNT2uoLHj0fnHLf3t4MPYOnghBD9ANOCbTDH+/w=;
	b=MDk4o6UVH2DPDt5S8wFzbWW3RHFV5j5+Q/2YMvcJh3rO3tdFqmeSATAM0xkz/4EC
	WwXb5/kh2ZhYar8v0yEAvvwrVJWNY9jMB3+akMFkjl28XINNKXXBWPYp9UHW1g1XnaB
	C/0jtL+2mpLiUrOpiq+8UyjpwTgyG6iMGR/EKuMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660615252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t711FNT2uoLHj0fnHLf3t4MPYOnghBD9ANOCbTDH+/w=;
	b=UroavdCCka6MXM8vGsKWcWE5dIOdab5m7vhR36KGLpOYsAHqgdYlYJr8Dl2dN51J
	Vn5nojG/PjCEFjhs8s6o/oI/sLCXWP/XLYtygy9Bj/dt0LpktEcAixKzx7TpzlVGmk8
	Ij5NaR4j1CdNYAyc/cLGj/WDUWpITQS0QmLsGERk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a461da9d-aec172c6-b6a4-42b6-a3de-9421659daf70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6a9f9729a0ce4c5673b24b1fa9f651087a4be4f7bdc1f7c16be1d585f772a0a
Date: Tue, 16 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660615252
