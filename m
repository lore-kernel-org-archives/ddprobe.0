Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1DF1840
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 01:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649728378;
	h=To:Subject:From:Message-Id:Date;
	bh=/jTliCj8Iq9drDVcsNzVoSPXzy+vPoNy25t9Jftts2U=;
	b=b5notHfIIl07Uqa0XyAM+akR3AFQgHzIhUVgfby4mf2WPdZEhwE8wRt1jUAMjHVM
	PyTphFQg0z0W7DBOUeHlGxJm2uDnlX/LoastGr3g1U5azSpZypVF5L3yZiJcNyfq7fj
	7e/L+sTu7jYDEkxXZXBv/p7SHHEH4D36EuMoxjIE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649728378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/jTliCj8Iq9drDVcsNzVoSPXzy+vPoNy25t9Jftts2U=;
	b=VmrDYEOngin/F2YfHI2pQpaBBp3GcVZegRjSvVwFMoAm7KlYzdbc6aKjtyKzoYYk
	dYiG3DJQjBSNRbA/jR6XuENOuX4moJdP0ASyi09scpEdgRvkU3wP4pPJLlbLtxABJZP
	FL+cjml6INeN75zN8qOTIrQs+4SM2TzEr2kR9N98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801b795593-6f33e09b-7f61-45bf-b893-a010e2e1317b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 377bcef728d99d9e2726dcbe2266d19cb0bdc99679bf480a14fbb7db6ef21839
Date: Tue, 12 Apr 2022 01:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649728378
