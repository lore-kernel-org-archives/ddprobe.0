Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3253D68
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657900612;
	h=To:Subject:From:Message-Id:Date;
	bh=dC46Mu645B+CEILr5G0D53jbP0/cpgWd4HZdn4UKWKQ=;
	b=RGNlLPQxsBTaPhzWWzbywYbH75uz+jXY3S1gu3AWW4B/jnzCXYX/8HbWJMBjoght
	oABKPFhsZHNp8mHwGTZjfjhCXniSbntA0lug3cd2z7mzbHXJLoyAY7sGhaIcz7a7lyU
	OPxNsvYAROXyH1KeH2+FS7qUjO330pu0mTrtJmjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657900612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dC46Mu645B+CEILr5G0D53jbP0/cpgWd4HZdn4UKWKQ=;
	b=KIVA2QwsohFmLMwrPbgPg/MlQFRAlouzS1T/B7BQf5INsw/JVtZ/rYXHgDrK8FAh
	PJMJDIP40UDP1Z3feYhCrI5F/gsUaoZ1M/+n5dxtqa3YqtwiTUhzzBGWngaoeISLRVb
	Lv8M1yDnut2MaE0CPjrg1879Z75xFi9ZoroUYfCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820293bb32-ca465031-92f8-4073-a993-eb8a0562448e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8579d6c97f80ff8e5c3578f59d23e753c868b6c68a4a33b76b7dcf52df3f6f76
Date: Fri, 15 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657900612
