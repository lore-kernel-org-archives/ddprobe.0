Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330D8620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658813812;
	h=To:Subject:From:Message-Id:Date;
	bh=u3sUSPzs/Vuqw4S8vCQMdvg779UuxdguflP2gcDShtg=;
	b=SOKcHgBXN0LaQbmDsbZXIVlJkd42KTJhGXm7jQwB4JdAO9pkvE5PTpetR3Aph5MP
	UwTLdVo70rfHCGhPdFPeCNn7uZ5lnjAAKNO96niK9RvyaSqgYqYXVC3RG8i1/Wd67tY
	RHfU9qSooS/uYgwjzfTW07ScvDjI/hQ1vuFz04rQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658813812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u3sUSPzs/Vuqw4S8vCQMdvg779UuxdguflP2gcDShtg=;
	b=QlreHgcQlwqMq1q4FOK1EnrzJQ6UiCvuATE25Vya8SeEYLzEGTkcJ5Duga2xee+i
	jk2D14ri18F7+Z45BxBKz94JtPvORLzkz6nsuYbZ/MZu5SZJC5torCKda68+66Lhc6k
	Mi8QvS4Q4uOdSBgr5bGxcdHDdITFCOysKNlkSmEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239020e24-2872b156-cb1c-4a4c-a596-e550791b3b28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4225155831435e020b823da4e5878baaa63f2ee6b51b5ceef0c7fe1d25f02d60
Date: Tue, 26 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658813812
