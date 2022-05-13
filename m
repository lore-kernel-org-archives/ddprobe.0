Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DAC256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 23:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652483279;
	h=To:Subject:From:Message-Id:Date;
	bh=TLV0orOZ55Wf+Y2BEumC+Kc1MdY3mrkB28zbpgIuf1Q=;
	b=IhlcWHWqT31nQXOfi8Cmi5R0OK5ZJsfiaz4684zWo3C0RZz02g7fEqoewlvQzne6
	Khh75y/1KqQXkFFkQmuDpKmIz63DROqzdC+MSjW8Rkn5q6NcPBZANFe6KfnCrGhE1pi
	npXmDFF4jsg9l7PA3kboKqU2cb3v4xUXv0c6ZNTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652483279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TLV0orOZ55Wf+Y2BEumC+Kc1MdY3mrkB28zbpgIuf1Q=;
	b=fu7uXgAyOEnW2v6GljEDGm90H0AiS++AIuh8kQrwuY5KL7S1dgA2B2A5MH5WMygi
	OrZM/gjRtSvC9WXg0NQVcLo6hO+EwwZR5hQr3FmBsTiww3Vne+AhpcmMihwO8T5Rv/7
	sahxL1pvmyI+r5qYoTwdmj78Vvt6EmRWqWxWOadk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfadc9c1-6729d603-5e8c-485f-80cf-798b4c10061c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec773be8720397920195f61c0957d46f6358d5a26f5e73dd5d958d5bc1c8ffb0
Date: Fri, 13 May 2022 23:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652483279
