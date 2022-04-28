Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B36F1398
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651184758;
	h=To:Subject:From:Message-Id:Date;
	bh=GF91mog/ORRYG/RK+SsbSW53OQHNAn+MPTbrYaw071k=;
	b=kxn0iwTThoISgG373SIM9Nk5GHEVaOyQYjM7qeqzZHizfMjSAFZQlBVKSNNJbs2V
	3rUijPke+mff6xQsBcLYT6X6w9rbgnBii+q2WBbkOIY9juBG38XiqysZWu+NgUAYZvn
	U0ma5zw3yJP+55rh+fi7KnWZoSE02bYxCJoINPTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651184758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GF91mog/ORRYG/RK+SsbSW53OQHNAn+MPTbrYaw071k=;
	b=d1BxmtM3GLNha9vYx0U4VJOWmrAiPemh1mHbOZ3RQfyytBVJB0b0yvyFg+4L1QED
	e1ZpInZpGHYN1giRY6zBrfJAjmi4DnycrdoyysRaMK0FEsVjve+d9QfdVuajy1NQ/WX
	upp/x1ijJ0kxu5xtBLYUbyqepi/03QXmb5hDizNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807247ee3f-7290ad1a-f5db-465f-9d31-3b53f3b6406b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62e1a1fa4fe8cbc2c09bf50950076664a718e64a9eb967c1fe6b3617751c2664
Date: Thu, 28 Apr 2022 22:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651184758
