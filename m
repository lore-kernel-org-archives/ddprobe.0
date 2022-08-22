Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3048D4C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661212252;
	h=To:Subject:From:Message-Id:Date;
	bh=dWXtASRBT+Ds+PqZ7gTewqoQ0uXMLNc7I5lRdmTRXTc=;
	b=j+KxGYjKUEYZ5yAOroT5uiLZVAmgNuKFgAdKGmob+axJXdvkOaM+RTMV8ysme/bl
	S7rMiG315hzF2byB8/oXICdY4f12iJBqP2jPROvckGrdB4FsDpyOqFTsE1rVM5IJrn5
	vmVD0MdbTBJ32idXsZI5fdQs0AGVlKJwCMSnaXm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661212252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dWXtASRBT+Ds+PqZ7gTewqoQ0uXMLNc7I5lRdmTRXTc=;
	b=ica7Dr7ttO9Vaffi8nPY2QR3+mU42MKKekSv3i0itSbbcsSjrutTSnzpf+szP42v
	zzxUF1ypdZ0FJmtRVPBQt78FSuWomDSprSbRiD01yZ1aU2B7rzy2qB5irGn/fndp9/4
	W/yYyAV92/G7nem+E8hyNstQLTVYLNCLiMAXPiV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7f75996-410062e2-169e-4379-9e38-a2c7ca89c203-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c21d4f1b86c74e412ad51ddedad33b9c9973305e7935c26cd3fa2f7910834f
Date: Mon, 22 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661212252
