Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9787F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 00:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655427179;
	h=To:Subject:From:Message-Id:Date;
	bh=cezEk2aGGafWrDuyJaUqnPCFoJ5IvEB19M0K9vxBcco=;
	b=in9thlInKcOPGCT76K6Bltk3VXmTgIpdYEwYySWZxTQOGUEscMVRqKcpZxa9bNzo
	aelOVUsIuElDezU+cG4m75JSMduDmnqjBS2h8AbcIvaYrZh5JNIpAXHkvRCrUnL3Bey
	SudlVgTahXLbcmqLM2+7GZIIMWovp6cKkGa93Hi8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655427179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cezEk2aGGafWrDuyJaUqnPCFoJ5IvEB19M0K9vxBcco=;
	b=X08ghcp/zobh2XZns38p8ki77jf62sxmZ7EnGx6vTaE+09nXFZv1cgNBROhz63JN
	clBiYYW7SWJx57wcVltD5Xe4vGffYculz5WkeDFmsFfgD0FGSHDNcC2KtLscYmCmGy7
	UaGKZJJcNF08Xw5CevNg9+6V2GV7FLPBrACOniWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816f262345-9c3bc078-60c3-432c-b8ea-0cf8b06e9153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40fef98d501d69364b802b00999e16cbb080911b9fbcfebc7cbe1b6d904d35f8
Date: Fri, 17 Jun 2022 00:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655427179
