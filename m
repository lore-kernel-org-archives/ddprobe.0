Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DED1879
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 21:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652045938;
	h=To:Subject:From:Message-Id:Date;
	bh=2rEqD4rE5XvuXAU0v4VRfNNWlGBcNMLwj6saZt0qwaY=;
	b=AapYBT5ZIrRP/kok4DCcU5LFY2sDWunmpnsTHvleVM6A3zeWEq+HxtEmqE2fh8nK
	1orTiXSQlqew2D02yW17QoLhLxBafpQ+DpXrdAXK4/NLuQavfSS0mhSPNOzeR+ZZCr0
	2EZxMDtJzOm7ayTsXUJ6yg5bY02Yw95PY/MozR1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652045938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rEqD4rE5XvuXAU0v4VRfNNWlGBcNMLwj6saZt0qwaY=;
	b=M9vm3LBH0QuOzk0yzFv37aE1rJLobpabnbXWpuKP2QmmxZeY5pN5FHpUqDbM4IGY
	cc9ukdtofOObu7pl20OuL0oDdT1+7txH5D7y38oPKDm2i9JkwrqXCNhbbB5n6Fi6ZYJ
	S82fi6ixnntqsJeVwmC+VTN8adrY33WVLNb0E2P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a59c7e60-6e81a50e-0278-411b-8e95-d9ba0508ef43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb0fcd8b55ed288e67b918600e12489333ddfec2ff68ff05728e26cc55d353dc
Date: Sun, 8 May 2022 21:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652045938
