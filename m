Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F71192
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657759612;
	h=To:Subject:From:Message-Id:Date;
	bh=FBxa/GaHC5CmDBSDOXb1gy9D352qul+JaBg2oagjUs8=;
	b=KS7FqP+Nu6F3xD2aRCvkKQN7PV319GKLzQ1O90i5luqhlO/wZ+DEcWnd2ACHOvPG
	3NBn6wbQ1Wkbvo9lD+DWJJTWwLo3jmylMrtAJAj+LCLvYE6o1JTHtC2cnYmzJijG7jg
	r1g7/By37mKbziBrlWqTOfs5gnF3kV9oZDY3o878=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657759612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBxa/GaHC5CmDBSDOXb1gy9D352qul+JaBg2oagjUs8=;
	b=LS1QzXWVwPs7HQgSHEmBucogbB4TLpnxrqYvH3pRXB0u3s02PbRFv74cm883fRyz
	N/RqSGxx43XKc5N6dQDk4LtFyQb4BInm+yYRF3zeOhNhbcYGLLPpl7B/wOi97TfYFK4
	76Ea/Idzt4R05rqVWbDiOTkVa8IrjrhskcyU8ciw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa2c3da7-dfa2f2b8-7350-4a0b-82af-9d7492d33fa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 676ec7faf0f1fcafacd0cf9eaf41f59405b101bea1915f3ebbaf13d6c7e5ca73
Date: Thu, 14 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657759612
