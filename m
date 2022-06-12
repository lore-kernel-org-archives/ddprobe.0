Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BADA2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 20:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655066279;
	h=To:Subject:From:Message-Id:Date;
	bh=eYEiuhVnwJvpdyMR3teFrlMTfY+XyHKivu9y4xlIrlw=;
	b=PTq0g69ncGsja0Y5rHFjI8nWBfJu4yu0n3CU/bUfU0E3cpqICkICoKQoXC8OmH6S
	04GloAwK8u1J/v62NI9h35xuDctGJ7MkCkXAohkmjvNkWPMqzPIcNA6nF7sjD72hpeO
	h1edJ7ubwR67Yx9meThnIPhTN4xbLFlaFD52mQoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655066279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eYEiuhVnwJvpdyMR3teFrlMTfY+XyHKivu9y4xlIrlw=;
	b=HOOl36/Dfpx4p78Z6ANtSTn1tuDz52Bcbb6zc3GAQHfmuY11fp2Ct89WOcGWiEi5
	058RzSd2po2A+/S2oVAU0RAXTY7YHQMcDmV26w9/tFvlGtFIJYSCjlGkX/ELLCHMnMt
	O88J3MCZAlSNls/iWwxuKr2KgezA2xicZvvrXivY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018159a33d5a-7a0587f8-884f-4f4d-ba68-6136162853c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5493bc3efd42408a704b4df036e784f77ab6179434ed0b96f796ef5921761db
Date: Sun, 12 Jun 2022 20:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655066279
