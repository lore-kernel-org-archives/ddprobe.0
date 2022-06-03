Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41BDEA8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 10:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654250939;
	h=To:Subject:From:Message-Id:Date;
	bh=S/V7vugK2UBUDafVx+4g3sT+cyvsC3qoYkahEDLQGlI=;
	b=ZlFBUdSaiTKYvkPjfpBp3ShZFshoR8U4jgJAm6XLinUjjwXijmQNK8tEb3VLtJMZ
	4wzITemb+r8BH2KY/zxXLEmc+aHn/4jTnBGpJWvALeBgnccCwqd3gn3fYhyBRnFbX/q
	VnygIE/kdp0xxCJHNjCkhLYPZyHqyaRzvg7DKP3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654250939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S/V7vugK2UBUDafVx+4g3sT+cyvsC3qoYkahEDLQGlI=;
	b=NRHYzXgVhw9qxezWMuBJvKSvCbM/yleTj1C/Xb3xDoV7Ym9SBkzILB7vlIchsMyx
	HjMu936RSxC6AH4VwnYWzEMN2gkStHS/xkePAS2MgX/whTw0MzDLHPMaL2gxCalMrg0
	BhPPR+kOV6GxaJFJ3qitGq5Ow9iVHwGX1YLRZBuc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181290a235f-a67c8515-96e8-4ec0-b8aa-fa61f4668e26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a3fc14fb0bddf95aaeb580d78d589ffa4391586d25396221f2a5fe20700b339
Date: Fri, 3 Jun 2022 10:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654250939
