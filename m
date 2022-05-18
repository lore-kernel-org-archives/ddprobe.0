Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9762846B2
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652867400;
	h=To:Subject:From:Message-Id:Date;
	bh=U3VxLtxPqpOC9nTadFpe4LAIVdCzMuPf8aeIYepPfvc=;
	b=RS9Bre24VuHF29xrP/kKkkHQcn5GiBuTL17EA4qM0kuxs2SusSXtBZR6rhUz0Dna
	/NGOEsuYQa3wjzPmEpj+641cAeU16eL2T/3jE8FCrUK6l/kUr1+o8ZV103IKA2718IO
	BxUI7ScrR9EeOtdPGi3f4A6SCnM46Yrx76Oo7PF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652867400;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U3VxLtxPqpOC9nTadFpe4LAIVdCzMuPf8aeIYepPfvc=;
	b=XtZ4PCvV7fo/oxYdxvwSRdzWQDJN5+ilavyrqKEoM/GJVL7gYIkLSi0868DDlkX5
	pDU+fA3JVZm8Iv25t2Nj/Rln52d4hLKIXGsYQ3mOvR9z9vq4PLMAwb+H7XTMsnDf7Bb
	lPb3Z1MlCFJT8Fuh/yhmF7LLlc9mHz3+wZ6S+G7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d692fe57-d4bac48d-e6f9-47ab-95f9-c4287cf96796-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7b2a6c663fe28889bbab6c0b99e82c070d4b576620d7cde74a21dc34c52a24b
Date: Wed, 18 May 2022 09:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652867399
