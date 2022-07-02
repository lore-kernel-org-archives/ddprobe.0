Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213EE1867
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656742012;
	h=To:Subject:From:Message-Id:Date;
	bh=nr1DI8GlmGLI/KjlhPW6bihpso3QqZTIPk5Ps8NdWyI=;
	b=LTgV3TLzwIV5W6XJCm6N086buJzOuuozxrHyI/IyZ8nbmasdxgbdUCX2juibZpd3
	XTnY1fVfRP9JWygYh3bNztlQmT9ssYtt17AtlmT1KTLDn3b+nF7qJ0k5vG+8wlD1mD+
	iDwYEIsZDCTlk+xGOFPvxqbp3C7H1VHGuYDU2BNA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656742012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nr1DI8GlmGLI/KjlhPW6bihpso3QqZTIPk5Ps8NdWyI=;
	b=GyMU6ORNqvepQBW+VdILUpQEqxjxLzs/YIBCBBZgCEXdhik+vJk+eIGnb2gCYj1V
	SSMrm3+wahDl9wX+wfbhiTFC+CtldefExniF9fvMUs4kUc/CLOJ5BZskPZoAWmKeV0Q
	8zJnOCVMoAK7VgNxx+ZxJr00sAi+s32Ba6L8Em9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd84e587-ac0a8e0c-4075-455c-a99f-4a5cb71df623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 765e4fd6a565b3493c7ba690453966a30d2dc73c2af266b09cdd56a7ac637e08
Date: Sat, 2 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656742012
