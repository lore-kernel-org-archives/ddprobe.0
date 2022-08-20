Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BD720EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660987852;
	h=To:Subject:From:Message-Id:Date;
	bh=RXqN1FHqgq1mmGaonDy5MntmCP9jeAWEGqUVQ9aAk1s=;
	b=fVko/3aaGYGmEiWzze0IG+u2eUkj7efmCaCwSa4Hw/KyAWloIU27txKGWySzehvZ
	S6IZICiJPUNtkRa6z6OnJzKGoCCEZuNmpt1AqNuPpVuiMCntxocIm85/ud4pwzJ7dWT
	aOLxyajn/WOMAitwZsel+B+QrVEghyr95hCiSO4M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660987852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RXqN1FHqgq1mmGaonDy5MntmCP9jeAWEGqUVQ9aAk1s=;
	b=j5zOnx/DxyBLM5OeZtqyI2KwaNrPyUEMRf3ZMyOdl6k18f9CMwEhwCqYpbTWtoFs
	zLnNdoKFOZXbdZqCHduZXZsKBfyNocnkjBR2uFPOqr/vhi9Z1kKCqLqzY0mZjSTFast
	UPI/SbCcNEvLlY7xE3vFyVRP5DO9/wMv5dKLHlVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba974714-fd6e9e1d-b6e9-42f2-b9ee-206aa2514ab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e061fc5a972ca14c7083544b5ae6d925a4f2091df48b3e7cddf35892aceda5ee
Date: Sat, 20 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660987852
