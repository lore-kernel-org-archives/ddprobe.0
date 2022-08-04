Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516FF36B
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659588052;
	h=To:Subject:From:Message-Id:Date;
	bh=xQmy7xWn4cpqrIwK5dEwdT7tirlnR/doBaIUv86iFsw=;
	b=EzHbp2uSRPbM0JH/fMwaMOr5A6F2K+FKBNZIpfKdzaelj1SFWLPqm3XCRciZdEHu
	vg3mhMrKH8tr2lOk0I6w2tG9gRd+2USb2PGlLbrHol0UBMAazOtLlbFheghyfB88eN2
	ZyW0PEEfM3Nwdtmvoru7qvlBrHty20b2VsVddARQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659588052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xQmy7xWn4cpqrIwK5dEwdT7tirlnR/doBaIUv86iFsw=;
	b=VG4KMCtZQWlcyz3pbrwkOxSFMdrdXi+zb6mCxAdEsRNncASXl2nJ5hxn4zL8yCEn
	sd1CnlhkAUenK0neJAidAWKvImJJ+7P7Zp3kWEQ3qu7HF8PIWOQw75RAETPov3mMSnU
	kjX7hbAmpyN1+GePnUVn3ekgJAMxu+JCVB1lP7vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826728065c-7bc9e204-b179-477f-a11c-02a329903fd0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e609cff7d8441703f0eb88f8abad13a07b4e3f7a680977eb27c67d6558a1fde1
Date: Thu, 4 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659588052
