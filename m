Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D037C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 16:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644683421;
	h=To:Subject:From:Message-Id:Date;
	bh=fpoXSDMuGkAhSdpRRVuSSVtpHu2dINWuaVvSkCdh4gs=;
	b=XNF7+Gnz9goFMeT94yNbVm2MZwSQN4V0RmfR25Cx+eh9Ibwwut/G78d/j1fqsuU+
	I1isEmIuV1Q0nkDnNqkVzZQL8FJ1YT7YwYoDOYumNPqsaBsKP0HTP6ymG5YCdgbm947
	Aq+tB42bSg65Iu26/OmJAsVi41wf1YSF3XENfKcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644683421;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fpoXSDMuGkAhSdpRRVuSSVtpHu2dINWuaVvSkCdh4gs=;
	b=S+AOf+LxjQQBGSoDuM7WYzu7W5dPdFzGP2sLxEH8GXniJd3uUxOm507epmOrSPVR
	BSZObq/F2z/doHdyXgU5Fp4vtpOEsnbrkKt1lepdt4BFfxAz4AhJKPphKeRJbUee1x1
	Fdk3FvrJTozmyLtPcW3UBQhrTDXAILGi4UlHMVzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeec564d4-0edc5bd5-5f32-4e23-bab7-3de83cc3bec0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9d3f63a392480bc677b6295237cb43c469b0d3f874861ee600b0faea5eebef6
Date: Sat, 12 Feb 2022 16:30:20 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644683420
