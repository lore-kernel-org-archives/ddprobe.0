Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600A15EBA
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647042384;
	h=To:Subject:From:Message-Id:Date;
	bh=pAys2iOq/enbePbquDiLBqAEpqOjL7SOJRSVRm+X8p0=;
	b=MmkK64r+ty/YnDr/0VXElodMlfnmrsp74QcHw2Ef/6botqqpbwPo4ldjEWgaVfbQ
	HPE131I6hjiq5VUKGkoOwcFzU2a8Ifw75SkBA8L8fiYAwu+2rmTn8XVH6faQst3vLRe
	Vdl733bmbxnYCi3e00jZoFntrsYRuL4QbNjzIA/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647042384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pAys2iOq/enbePbquDiLBqAEpqOjL7SOJRSVRm+X8p0=;
	b=B4J9dxjbOawc/+r0OyqZWvzkTabBE9ShXN/bzTACWvQ3VaVCMwuNw8ze9fFpd5wn
	Rlf1Vw7zEUZjPMHMnpsdgy4shddUPc3VTfh0+hdREah12q2j/Am/p2Vrr1X/q33GcNz
	MpH/vKdVAWkZ8CCqQ8OR76jXhK9CxyIUJmcNAi1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b6053a7-dc05cf67-b6e0-4667-bf46-bc7895728687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8acce19fa372e7e425d59e76cbc452b36c1d4977a5792afdf3891dbbbea51ac
Date: Fri, 11 Mar 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647042384
