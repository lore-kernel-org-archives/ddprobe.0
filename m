Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C86B7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659328252;
	h=To:Subject:From:Message-Id:Date;
	bh=gYGMrvm53kIMj2dryzefX1J62+xzRGajrIsD9+5qLhA=;
	b=Mdyl8q66bDpuJ2lSCIOAwyuJPR2+AXzf4yCMP8WTGbiyo0TkBc6cYTgAL+L//2uN
	ShK4zeTjmAckM3TI0s/SRCgw9r3aDFwkscrnlKeI/Q30OqG2KrmXdg0gIYAAuexmA4L
	nAw49dLdpP3I2AI+DWMb0qakTvCfbPy6Q0cRnIDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659328252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gYGMrvm53kIMj2dryzefX1J62+xzRGajrIsD9+5qLhA=;
	b=ATH91tK5aOLczEOneO/gWdUpnQmDjs5iXPc8dKJXsmNY9QAgTYCWpK5zedtzbxsz
	KOjcp1QlZuro4Y4n9gDJXy92xhJ6P3WsRgvDIfNR50znRWcDMFotrpkRWDkLHrpbWyY
	rDbSlQUhkl0QJeEGzlt6kEz86kuFCePPLg1g86gw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257abca74-c137b8af-0e86-4e39-ba9c-a33f12bfc498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fef78a9c4642f3f533a6e9f7146a7834224aab41d30dccf2daff358f5b464b7e
Date: Mon, 1 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659328252
