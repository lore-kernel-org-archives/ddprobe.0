Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913942F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647200784;
	h=To:Subject:From:Message-Id:Date;
	bh=1G9v1/C4HYK4ZFL09rWFfWpxI5xbTKph1wr5XE1htNM=;
	b=GJp8r6Ww6gAgnZ+4oGdpHxgc5/bdyutw+caSf14Wl2Lq7y/eTwEdSLGdsjL6ElpU
	7FbrMurA/xpAIKI69HiLBw/nUs3qzvZwvulwqyCFX4R5Gdg6weWydTh5JqfeVj51hqR
	Z96+mWwYPyMqko+7+P3by5KwUEB4+KunEi156bm0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647200784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1G9v1/C4HYK4ZFL09rWFfWpxI5xbTKph1wr5XE1htNM=;
	b=SgS6RDRLtH0+fbsr0JF5ezE8dFTcfTLe8RnmGC9Iyb8r4VNnzS0RqW2DYJVdRZEX
	LLFPl1x93RcV1ZUfyzjM66yTElBQkWNRwsS1cu3431Jqc625vCNArY8d50GkdSMASCH
	ZPzHre9WBfnfCeI5l/FVseZZ+0zdYv/Lf0evChVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84d1515d-6e0d2df5-50d2-4f6b-9890-e746e96fc9c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fe3d758fe9b80ad8eb45ca755a1167d596a46070feefc93134b3fcfded1f3f5
Date: Sun, 13 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647200784
