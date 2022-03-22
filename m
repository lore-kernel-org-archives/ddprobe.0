Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958B6802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647925584;
	h=To:Subject:From:Message-Id:Date;
	bh=NlGR0FWKc/qEBS9M/kvxXWVhstYLDqXWfkJh4+rXlzk=;
	b=Ay1cBzgTCYesWF+szaVIVMRoVi5ybi5AAkii/mL0CI9sFpccdq7c6jXhteFJ0yeO
	JxvssY4NAPLCA1SBei3O8SNLppxcmy3Yj/3aSNXRQDbq+NqyTHGX5S3749AtKvhQclk
	T1eX2vtiryH/7AuoxOLM+EmiIOG5VdM5i0F3lGaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647925584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NlGR0FWKc/qEBS9M/kvxXWVhstYLDqXWfkJh4+rXlzk=;
	b=FC35iktJB1nUBq9Ods1eWW23rETGfzgaZraMPPfPtcctSn5XrIhnWzYRrnfoMz7R
	wdmz/oFx60ID5RDYXB9N25N4xDmW0WQ80xL2c8EtE23XP6Vaa+MaO1xiAe5n0lgR7/0
	bvEfll78xrdRDlYeWi7CuSvhw0K3Tdy2YXiMZW3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb004e357-75e67265-dffd-4b72-9953-112a7225e654-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61b443b97687f2a508f3e365a417d0b1f493a3e4cdfa9e0bb0b3e94cc58af447
Date: Tue, 22 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647925584
