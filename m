Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D67538E
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658857853;
	h=To:Subject:From:Message-Id:Date;
	bh=/eacrJA4NcJjoGS9sLSOHNaaLCB/aC4BnibkquzEcQs=;
	b=HsAzCc6shigx1opVoQH6w2VT2TdlIPbcoOvQgeBjLjIh0Ob6umyxCYT9KqjkSQ1r
	coc93bJmmVKSaBTatl3lMgamObkw+7jWYGjdk6JAJARgLS43jZKkU7KWoId+2zdceC0
	JlDbjssihHDxqNFf4Z7JW3/wIDY5mN27bCyBtKCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658857853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eacrJA4NcJjoGS9sLSOHNaaLCB/aC4BnibkquzEcQs=;
	b=MVzpSH+EYFsfqOXdBPlAmLEnWqD0u8GE35wa5GwS1GlOg8KbpsnStQaQd7K8XA3u
	8Um5vUQFF8Xkw/NDbWSaVVgZB14hIZzZYBxNdXmisCz1XLDH8Cqn+jiB0B49nZE3DCM
	UV7JjssUgnj/cTpcMor0TnQScV1m745LkbaYqThc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ba20ee9-8276d84f-9836-4112-9cfc-c7a5d62b0b96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ebe0d2a3a4238768ec21f18cbdd3da98cc35a8dc6f809494671015e5b2b1b24
Date: Tue, 26 Jul 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658857852
