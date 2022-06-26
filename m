Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A4B2F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656262012;
	h=To:Subject:From:Message-Id:Date;
	bh=ZRASkmEm2yyTvKWhgWEz3YCRq1wU51KXbQ3LReCalFM=;
	b=hXXi0279XbsLopqheDDBNXlK2P1hMHWDqJlCnqVWsxiKVHpRZ4/2t4H7eY1yllP3
	lupHWRfo8rNQQucdgBScdZc2KtpP/kFfKXS/tbqCEUPBdXTs/3vbDdhLddHvsDZH2Ie
	QP9wxcfKWjiNERXdyr382SvhuK4CLxRM2sDVUc7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656262012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZRASkmEm2yyTvKWhgWEz3YCRq1wU51KXbQ3LReCalFM=;
	b=RmFNxD5gm87+o4RUJeJfKkyiYpIAgAjLsLUDlfUWpc/BawL1oo8z3LruR28DD/E5
	LLRaVidAKf3sl/3HDyio+aUK0lfoD+yNHk2T6hRPkcPZW/xGrdc3BLIF3GjSusv+BVV
	cvtGSJANWn5JixSKLM9R8O1mxLT/0QwhgLrZNW78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0e8ad95-51acfebf-153d-4d58-9a90-bd4c32dc59c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08fe4f87ac962f6985be7219e9a347272363f355356761eb93399f7c23814bbc
Date: Sun, 26 Jun 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656262012
