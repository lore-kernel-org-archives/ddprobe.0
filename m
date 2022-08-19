Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7D917EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660899052;
	h=To:Subject:From:Message-Id:Date;
	bh=fA7oG/YdRUxwjoVd9d/Iwf3q4rirzOZ1qU13tnW7gMg=;
	b=LHYm3Nvc6H2d6nhhsGpJhlIB+cA38Dqsa63McV/6r/a+IcWBiH/3JgpJHUGOR8cE
	mTpdXbDGOE6PoR6hhc5tLMIuHqtxZmnRRLHKc/yOsNP8k1hbVek47Il314zckEos0Nn
	wGSZsfxRC6vNVifyoEk3mEDjP2cCCsUVTrH9QneE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660899052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fA7oG/YdRUxwjoVd9d/Iwf3q4rirzOZ1qU13tnW7gMg=;
	b=U4ykSCRB2Q3Y+QZ7VwRai7+f8debm+63Uui3dGjLzywds/qjoLwrJnVRx+wXJxjc
	JDnVZ9DCNYFqyCbp33+W1U5sn6Mvfde6vS+5mXP/hSdio61VBycynSpE8iZNYSIuHJp
	8ZYba9l30GQ3wJUobkXLOz8kvnrOkxKxdjfUt4i8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b54c4c41-fed0c222-743c-4d7d-87fb-f6491799692e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061515c2af7ed008f5d55ec8dbdf20613e5d7c67a50710627f228683bd6707e9
Date: Fri, 19 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660899052
