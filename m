Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFA4362
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656401212;
	h=To:Subject:From:Message-Id:Date;
	bh=v6/u/gXZ1KRaAx3k1PJrIyq8WGAxofwpgUBGataD04U=;
	b=J9A976cGn3pfopyH5uUGHH9VkAOhKYflLEiou9Ys0OLtCvoCMo6ijQiu8Ci8OsEH
	joa8hFT6u1B32a8mSLZUOq++U0syYzk6Ywn6mtSMRBiWZbx2G48HLMM5zo8wDVACY9p
	kdBbU7QXnhyTDdFDTSxSt2Jf/0Eh1XfWWi6cn0cw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656401212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6/u/gXZ1KRaAx3k1PJrIyq8WGAxofwpgUBGataD04U=;
	b=gQYf0jWHWNDAkN73OColgusEeL/OUkk/Cjxgk/AX3P63lLe3hhwMiYsHCpyV1DfM
	tVX+1zSF8u1bte6yv2qUMSk27jEuxd7VD3NrShS5N/M66qJeXk3pZWKHuNsYInL9CL0
	U6evyLRJRwsOk2SICzpgjSM97Qu+Lp+nugvBkXhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a934b37e-669c1888-6730-4025-a1e0-7a06f027484a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3114ab7d41e026f0405548b064dda9138653982952ec4c1118c33f71bd714717
Date: Tue, 28 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656401212
