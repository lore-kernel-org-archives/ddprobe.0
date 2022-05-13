Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A920EA
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 04:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652414999;
	h=To:Subject:From:Message-Id:Date;
	bh=Vni0zbQut03V4ceB2dbYTNQgvOFqLSgO0hP3nJanbAI=;
	b=Gkfmu+tIlX9S5HpRGOZqWV2pH72J1M/6u9pGaVNIm/pwDvPCCkvWqN+Rk8cY21Zb
	IxIFzDfimkqtEwsloDLOh+h8XYMwHYzT58GCNC1I8vIbTyOAmVN1aiRQKd2Nqt6sszD
	J76g9M/nL5OmXqzzRCLsvPHYFhwwdTyARqHVBsuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652414999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vni0zbQut03V4ceB2dbYTNQgvOFqLSgO0hP3nJanbAI=;
	b=CmDX/eQX9MtnQcuaOCxwl/fvLvX8LKbRktZe69sLi6ApVSGAKr0GmiIHDpYw9epH
	pAhxK/Sjmim3XYIR1Aodb6CS7qL+a3JiuUR6mCEmKjzk4KrEU27o9LOiI7mUl4iivkW
	BLupwlAuakBL+i7/rfpqGjzXTUXdOfe+sHFJ52AY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb9beaef-01b106c5-6056-490b-8430-571892ad3ec1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a6535b5416df75ae457d6c7479976b891241f03afaa2bf129908478e167680d
Date: Fri, 13 May 2022 04:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652414999
