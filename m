Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8A37E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 17:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654105259;
	h=To:Subject:From:Message-Id:Date;
	bh=SLzi/boT+ABZI31s6MXbsmcF02SY9XBOgy6mhL7nwCM=;
	b=E1Vv0cNDLfTUuaDPmiz1HJ205hBZGRBYkYPym79u8nIQqCkZrKevyjHfitsJE13b
	W3u9leZ3WtV+7NPesY+GRGgXJIrYtSuT/HnpfuvV1r5szbd896PpO7GjGMdgM66tKuI
	pABe3m4cT+wUxiP4QfCp6QOH2Tc2GKK6X3QN3uKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654105259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SLzi/boT+ABZI31s6MXbsmcF02SY9XBOgy6mhL7nwCM=;
	b=VEUkW8WCBT/SgVlgMBBvpSPY2uOWmX8bGmLhSGGr9MlskKBdy2Ur2ypxpCQAGILo
	9cOc4xJLGDD3m3LFb49LLbJSPU+2trsfQOXE/r01bxwJGyujiIsrMH76frTbG5yHx58
	lCI8z+Czc2PbI1T6OhSwpk0IoqwDKYJGPPhvHlt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181205b3d08-8a1cc2a3-721e-41bb-8e92-ee738a3a8f06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3220b5010fed01bc5c9cf8733a9aeb5a1c1e00c0e5acf0c84cfefbaca1839792
Date: Wed, 1 Jun 2022 17:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654105259
