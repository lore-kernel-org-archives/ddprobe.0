Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50CD1FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653662459;
	h=To:Subject:From:Message-Id:Date;
	bh=Lv+3g26f4o/t4kmek5MnCRLUKz2H61/uLYIU/tU/E5A=;
	b=TVgq4IrINYKXLt0X9MZmqKZJb+68PlDyNX5f6SZ8Xd5gcGg0r61B99dah2X9kiRR
	MlDseHOsfhsgbIkEhq8giTFgSeqGQqTy45EXYRR6lLj0Q59T8f7ywZ/BG/yX+2qjfAO
	YxSVkA71IGSu7rSpH4SgAiHoTQtsW2QiFUvl/UiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653662459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lv+3g26f4o/t4kmek5MnCRLUKz2H61/uLYIU/tU/E5A=;
	b=W9uRjNF9Nc1io9uv6z42wm0vrl5gVRIUdi5I4dfO9SPthKiwBvNBJiKpWuqRAFCZ
	0x/sKzvNpDfoqFAHEOQEfbX/9HN6dBpCBya/dCNollBu5EFk8m/E6V+eF1kAyH8Tnct
	yVF1+Gj9lUReQ8s0lnBJHFV6ahqSwvW0i1vCPGZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105f6a602-4bcf6aec-0f0a-410e-8b0b-456250bf3ae2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d5b89687b1f4ad54d775e4c32bf030a3a8201ee4da415c83c824e40b97af1a0
Date: Fri, 27 May 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653662459
