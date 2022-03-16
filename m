Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D2D2F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647446785;
	h=To:Subject:From:Message-Id:Date;
	bh=Xz/VzgwAwDY2c5jwfaUiFpX3NGCj7B8syoFK0Nd+nzs=;
	b=Ldxhu9b83RGw+mpkyJBPadsmlpLtrd1RiQTqulvJCZgibcjvOdgV53B0HEbulwAi
	Rkv4S2VwmlBoACsRXfs2WR4PsFJF2Zq4zaLlkh06SOcl0XBUNdllHGApKqY+0cX/MvT
	f/LNmggPzs4ygKKRk59Q/MNuEnpyk2P5q3q/7TGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647446785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xz/VzgwAwDY2c5jwfaUiFpX3NGCj7B8syoFK0Nd+nzs=;
	b=fMnZ1D8bSPY29dse1Se8r6qLhalDguDwZjSA+xDkw52PJCsw7uWdheQwJrOFRUrv
	hBY7rCu4z6gWju7n4T9X3zLX8yUNBAKn2b0UhNym47qdw01+/RoCOzx7X/B9GXlWGd7
	ZiiEzwCm0sZ1XNPT6R/QjeKQACSsPhzHSRfICRNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f937afbae-0383a842-3202-4fbe-91d1-8a79f805f5ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 682547ad398e998d019588edfa51359c7d3063349b58dc7c0bf00d72edd6a325
Date: Wed, 16 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647446784
