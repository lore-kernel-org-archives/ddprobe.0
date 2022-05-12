Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290FF18D
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 14:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652365979;
	h=To:Subject:From:Message-Id:Date;
	bh=lU/Imb+HGLxcZOYI2lOEY4r34cOon8KWF+YysfMNjSQ=;
	b=apa0WHhWNKtKww3IjJLDwewuNm4PS1uSW75tylZIndrEA2uAnfrwy4iZW8bnUNUW
	+UmcJwD1ZSc0othUCG660ekpuwtNu9Ww0eUDSLyrDZlisSgs5d9rKpo4c7zRN1f+J/2
	9Lk+jr4ruhzT746PV3MWhdgVtdTicJt6BxrZqW3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652365979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lU/Imb+HGLxcZOYI2lOEY4r34cOon8KWF+YysfMNjSQ=;
	b=LXKhXURiDVF3R8PHoE4WzNVGiVbdi4zrUkbDs6F+81IXCcyJYe5MwEsWr8ovALcR
	Gsq5EIPo+gk2JXKkfqVqa47jON2cs3aEFToDZOTI2ko2RmEe7MUqPn1Mo+SY+ILkkeb
	pDelh+ufZFcxvY9PvizRPS0S/lhs70drFPozhq7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b8afeec2-5e3d5b04-3fb4-41fd-ad9f-c6070fb0b0dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63feedbaf12a09d39d1bf76ab6034c7901a73a757d49605583ebeab057062799
Date: Thu, 12 May 2022 14:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652365979
