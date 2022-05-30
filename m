Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378AC17F8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 09:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653901799;
	h=To:Subject:From:Message-Id:Date;
	bh=OeOkfLH+atjesZhN9eubmGsa5X0ujEuh4BA5wULmArA=;
	b=cK5CaQzkwLGCHmpUzW3bgvAxJ99oA20hlcNgzXeo5hRRc5QHFj3t/7M+xO7Z6lia
	+rQPuP6DpQ8H+S0gCgDX2T+nFHxL6pEv/jDowNmhrsAOYUIDJBZtGeLEz21mVGHb5q3
	ohyX+IehkIKr6xYc3NlWkNtj3dw2tCy3KomGtxKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653901799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OeOkfLH+atjesZhN9eubmGsa5X0ujEuh4BA5wULmArA=;
	b=WUtA1xgHVMeF37DChhjbzmQ/2tUGxV+1ZlWteaW0juK0Hl8Etp32aCBhjZDNXuvv
	ToLAKKoG2XkjHisPJB8Z41ZQq7TwwT1OHabTNnI7/l7b5/km1QYnUZOL4q054sNsOG6
	unxg+ayrCDsz+yvnCNUqXyjd1g/MtEgOHCgYA62M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181143aaf45-90b4e8ed-0730-4548-8607-07591d69ff26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f023f830f2ad95601fe8846059252dd9ce0fda7a55e6d971583567fad930762
Date: Mon, 30 May 2022 09:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653901799
