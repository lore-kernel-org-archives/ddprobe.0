Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BADEEA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661303453;
	h=To:Subject:From:Message-Id:Date;
	bh=g4B4V+lDhyAm+cP2Cm7hcEuD/wh4zLcSAx2iUOM+/Qo=;
	b=DjGl6bUY3Nw6LhE4KSPs4GaFKNQqzgTCUzRxkMksSUNxNEe7ef4CW1PonUmD+g4x
	NRPo0Eh7em+wpBXPRcg5enMT9OptjC2slbKzxTgIOVW3xZ1A0vI6zya3PMeo7rJELGj
	Bu4WhuzoT0gRFXPZHxMTyt4ug87kaeywQ6s+JsbE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661303453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4B4V+lDhyAm+cP2Cm7hcEuD/wh4zLcSAx2iUOM+/Qo=;
	b=OgU5nisW72ws4F30U7NmrVhv2KaFD6lv81C9H0MQDf9B3caIqk+I4mgwmdsNSjAC
	yhQWuZdxXGodotRiydZcrc3JP1OzcGwWNQtVAx0iqWwfS5+Z0DyVMdnCWJNx/uR6LyT
	OEIf2+1CGnxkl/ocbdckcyuo9QS4+QvC3tOtaNoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd66f392-5eaf968f-81e2-4492-92f4-607ca0c2590a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373c6b07a28caa40783f6443667ee425185c1982badc6707d75985230c64674c
Date: Wed, 24 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661303452
