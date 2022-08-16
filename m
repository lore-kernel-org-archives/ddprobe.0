Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A62C1FAC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660630252;
	h=To:Subject:From:Message-Id:Date;
	bh=WSoHogEaRDfzBq8cIyS9pTRZa1A8EN/MA+RDPe4vr64=;
	b=AkpHJTfwQWPmS2YAs9Z+Vyk0+hE7HDTJ5K/meBZHZAcjazagZfEN7ycc+xya88oz
	U0vOyfK88zfdBvZpJIuTgNm9GrQAzdEICIeKAWcuPBOwnTDXZxQor7CQ8toT0s5ZxtF
	JoAd0twsBrXQyBEP+2GOwN/QzVAHguQU045NVkdU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660630252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSoHogEaRDfzBq8cIyS9pTRZa1A8EN/MA+RDPe4vr64=;
	b=FoVK2GOG8BUkXjmYF4GHWJwAv18+CCGAgzxWMUii/bqaz4tgrS7IvKf2CfwWjgsp
	BaELsXwPBC4N7GTnPXR3zvVh3TzYBWxcWIUQm15ubHh7s3+uXNkmV/qGJtsEa2tF4EH
	BzEPFIs8oP4qXKz/plK5EBCAbUvW/0xbc/kM/9Ok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a546bc15-ab8ff34e-541f-4424-b94a-68247363b54a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea53c9f12805032209d707a3c810b925275871ecb7bcb7bf62aefe6690f0d2d0
Date: Tue, 16 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660630252
