Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B067C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654609679;
	h=To:Subject:From:Message-Id:Date;
	bh=YwF9NV3QaWqn1pdvzFYu1DPdqrjbmLozzWYLufb/CnE=;
	b=YVDw08LvnHvYKORT1PmQjHWiLWClniYhBatjl93tyPArQYKWtvwgeacluOgFbN1X
	ZnxZntOWVhRQrGRSqJMsLBTVE1WubNZZr4eokxJgfErk/b9vQOHg6c7gSbnkP57zsxL
	An/fG6VSD8OCseqsbCD1BjF3dT57p12ekb7eBdQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654609679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YwF9NV3QaWqn1pdvzFYu1DPdqrjbmLozzWYLufb/CnE=;
	b=PEsytF5tLJxhwjJG7Rati8AeBSWhQTkRIAYOcODaaWJiI+0QgFe1zH109g/I0x3q
	bwXYSoRmU38EliWLM5TOimXKOmjoH6xIJKY9TNNXvNduTgz3GsOqV1wsIVigD6Wpnvh
	iNuAqnKnCwTlOFZECY90D3MpcEmQ0HfoVmjarTFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e6c136a-58feb3af-9b98-4e86-ad7a-a29a7da57efa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4f0a8252685fa99591b5e75581bd08839cc425a5d61a28098e87266501a77b8
Date: Tue, 7 Jun 2022 13:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654609679
