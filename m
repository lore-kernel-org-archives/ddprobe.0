Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F897E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 10:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654078499;
	h=To:Subject:From:Message-Id:Date;
	bh=y1xCBdtS9SBEBR/klNU2ixIENEeKlmBEi8JV8m0+Cek=;
	b=RVjLFjTaPXxLi2Q50SQDQpVqGOOEQ1oGHqYrqr2g3JbVSIlss53JLnK4bMSTr8BZ
	GhqLwTspbd7LS/00xse3WggNV3VkjQepPG9IfMXqdm78JGFGid1RsO4bW0qUJM/um9T
	2sBwzL1BDH5KwP8quL+6qqPECC6+Fc0magdYzH38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654078499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1xCBdtS9SBEBR/klNU2ixIENEeKlmBEi8JV8m0+Cek=;
	b=enMdL+1RS4Jl/oNKRulSn+8O/HchCJl5i/8KU85sokU9Duz5NZHBzxUuv6qCTiEQ
	AEh54IJajG808Mh/Fcu2W0WGUXTkQ0S1U0AQCDFrod72WatJCnPtFyxTXSB9LFztrjK
	R/ZUOTjgTgoovbxX+JZEEHZQluFndQHg5o/xbHLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ec2e9bc-45555405-7029-4fa8-8503-ada15d846b9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32b5736ffcbf744af53646ae53caf401975c062de23be17776682bd3f52808f8
Date: Wed, 1 Jun 2022 10:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654078499
