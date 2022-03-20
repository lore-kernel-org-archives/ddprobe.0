Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3AF7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647757284;
	h=To:Subject:From:Message-Id:Date;
	bh=tiez+byvCmlHsbtzkNJZwIX0ekbqZSpD5bYEakEXSD8=;
	b=CECwzvXP1H6cqJwRIK+KbQ2GuoSNCQAr4RyNgrEpuTM9XBrVtKDLXGN5wBSKE36o
	JylcaPwykzK/B99Z5DIVk0VgarES87YYcg8PoiXdu6jDWvSiwlPfHKLvgbBxCWQNQ/W
	cJlX9b16xBr30kvR7q3ypONp2PCNTB1daWTgwieo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647757284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tiez+byvCmlHsbtzkNJZwIX0ekbqZSpD5bYEakEXSD8=;
	b=bDDVi92EAiykpEgJnJl31b66t6/rSjyGsbTZqGpBN72lEwM6UJ2w5g/af4hiY8NI
	+MbRsuVKd4gvEwhMnSY/MUYaN/L89Xt7P5+tv6Lt+IAzTY8ecY758qBQoOF/usem1q5
	+zYRezF438FRKYXdj3dPSaZPoP6iWVBJuflJKOUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5fcd5a1-73d01f18-3e6f-4e0f-a3fa-19a6e9682af2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c75a205cd6b79c70385bc13e33a0b27d237b6073e326c8da1bb96f2ab2468335
Date: Sun, 20 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647757284
