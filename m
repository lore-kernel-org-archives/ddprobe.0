Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2550EC5
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 04:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652761979;
	h=To:Subject:From:Message-Id:Date;
	bh=NWrBwOIqqO3N6b3c1m+eITcWeRrcwAVI+qie6f0t020=;
	b=KQXEIetHfpfbb34+lX2KCovwMtIzWkHy9gTmgjjNcEVMzf4N9w5w/Uhi6g2IMQ92
	vsae0GIAp1Agv+eKoYn5qSSIeaelT42oRkAui/+gUuePpuvPDWHE84Pnn2vEXIuWUn/
	Wi+sgCO5ClZKsin53wNi1nIWTReZPJqabbgyvFX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652761979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWrBwOIqqO3N6b3c1m+eITcWeRrcwAVI+qie6f0t020=;
	b=NVRXCNEg9TxDJe4ysnR377bs+oJjEDgIM1pl9LGOc4J2zkjU6PXX0q/JLUjG9UWz
	PyCXtIp/e6OMv/pzFO6MdMOQiuCNz1VR769h1EVV5uLZL/LmlZS9Ih2MlYt+6WuB7d6
	HUQtznXWJ3nimwd2qZTkiz8aac3CAT4RCyJQnrMo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d04a6987-1e3b7640-8003-4464-9a8f-43bbedbcdea7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6e6402348bf50eabf91f027077a5ffd080edc780f6492c4c146de4a9cce6294
Date: Tue, 17 May 2022 04:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652761979
