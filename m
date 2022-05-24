Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 867AF7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 18:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653417059;
	h=To:Subject:From:Message-Id:Date;
	bh=goV5DLydS2+RnhuRv3eSpIsgXUV6YvyWTcFZaJC+p3w=;
	b=Sh4/G5yyen7E0NxQ96eHYwsP9uv+a9hN27g0A9sh8c0rZy/f9li5B/LNhGON5wTa
	HMJKHqzPu6bbfPcx0sZ+iuvXys/LsHXb6CfFDE85DmLt1A0gZLnL6BTfH1w1LV6Ms0R
	hFf4Xs0T38TFwHPpYFHx/8n+rCclTGd8Qsi38z0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653417059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=goV5DLydS2+RnhuRv3eSpIsgXUV6YvyWTcFZaJC+p3w=;
	b=j3sMsqEITthd8waierhHCLZJIyrd5fIttEnJW/OmNxHC1pG75R2zV0tNG/WG5gVB
	qP/7CmMJog2KRJoasID4NziMmg3gRIKMdytGHtUdqF0gFZVCSVlQqFaVGusonSpf8DY
	+sUrM0PPPjzlZN9TdnQm1iAnwnUGzd2rrNUFnLgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7562402-d6c14537-4ab7-45b0-967f-c6b73776afd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f24f16263b1e44f33a40aed83475ee0024c39a842ec43a2607d7e9d8b5fccf88
Date: Tue, 24 May 2022 18:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653417059
