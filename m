Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ED74405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658316412;
	h=To:Subject:From:Message-Id:Date;
	bh=/OM8Ng6x923gUZ/uoyTTXQEiOr3XgCG4xVAmGuhIbFk=;
	b=D3m1YS7gAvVtBvZdDrBHDP4hN5ZUaIV7H9BVYyXFvGabaBKy1fav8O0j1QnUM7Nc
	IGhVDoSMFtkytDeOop7hwmcPDEVVnc2tg0fW6tsvPj9tTllB2CIZyBEg3dxUqo2GDN+
	ce43VaFkpkgMbhX6onTJA8gVSzCMdsdJwJkYRLkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658316412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/OM8Ng6x923gUZ/uoyTTXQEiOr3XgCG4xVAmGuhIbFk=;
	b=VQq94nlZg5u+48lrXFMusIG2xT7MZm6iB1/lyWFp8Yeft4dCIaO4sb8lnkkTiGne
	o7+5pw+usEhV3ICdWMRwQeF2njORLf9biYkTRVDHp8rpbMCpg9vw62pm+XhFiQnlQmn
	JYt+UBiD0h0KC4eizhCq3p9VDtorrsHzYk82R6CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b5c5588-23c3059a-60e8-4fce-8786-f10be627345e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed2fd072f8cce28e7734661ffe4ab8e000c21e2fc8d8836bf533ff2f358ef7c
Date: Wed, 20 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658316412
