Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401E928E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 14:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653749879;
	h=To:Subject:From:Message-Id:Date;
	bh=Bso8dtnslrBldvkJmyIRuC0DXqyCaHk2r2d2auQFv9g=;
	b=Ez2hRDCFt3b/L31TuwAVcVobKyfyxX93swVVH/FD3nNG1mH7vd3LZd+tS5JvPR3S
	3msgRXWuwIuNL2Fm3Pky+a18MxaBMOF/P3yCbt+L41coWOEVwC+jNbE3dr0YrzT8nQx
	H+2d9ZwFc4VjmmqlA/UY8dJwpT3kp1qtGye4y4Bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653749879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bso8dtnslrBldvkJmyIRuC0DXqyCaHk2r2d2auQFv9g=;
	b=WUI2N839DJwfXDXVfzam8IL8VNbUrif5N9dFyDU6EfQarpasON81PxVJ077d84C6
	PSYcHSloYSzoH5PRcQ6aAKncmHMZjKYVZWizUdr2C2qKt5O1bGhKc78+nIXzkxHtOSk
	DK6tbPjGmcQd+uk+SkeydpBHCc9tC9GVBXU5svqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b2c91f9-88fa00a0-a9fd-45df-99d5-6d3228398834-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c750b204baf74995df4aacebfba608eea9ca4ad5dbd381610046a5c994a0c65b
Date: Sat, 28 May 2022 14:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653749879
