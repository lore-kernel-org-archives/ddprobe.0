Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ED97A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656443812;
	h=To:Subject:From:Message-Id:Date;
	bh=JysTTl69JuTsyRU5KMiZgejnU/TzMQfhVzpu6D7rXbE=;
	b=ddRvnvfbrfx/dYjmBB9mN9Bu60NdIMAhG/53yMlCS7498MRfCbsR72AY+bDVK1s1
	6bLj5Mcem1RhLqBR+iDfd981yHz03Y0YfVELIZS77LuaRdX3YoPlFuQioKMbCFxf5Qo
	EqXO2PrWMRqkT47xpx0I70dXeqZUTMxX9IyVOO4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656443812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JysTTl69JuTsyRU5KMiZgejnU/TzMQfhVzpu6D7rXbE=;
	b=LxglUXA7nbsvEa1giOjVIMxbS09o8ImUosrA5PkAOcJnt67zS/ciiXt74d/DwgXc
	tvpVW8qAM60MKQlWa4tMMNmRIpeYgXj06I9sJ+d5OSCoViNYrK9owPqmnC2ZGCP48gr
	aIhL0fVhQHatVHKR3pZCn+SF/ddTy7Lba1JqMkFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abbeb9d0-5894110e-8060-4e8e-95af-f702826a39eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41865cbd2cbf9de8d61581e78f38d9ab0dd637ea0c758fbf90a2c98f712d078b
Date: Tue, 28 Jun 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656443812
