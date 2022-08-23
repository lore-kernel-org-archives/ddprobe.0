Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816FE4A32
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661278252;
	h=To:Subject:From:Message-Id:Date;
	bh=adSuPVhAusEZhraEy5dwAnIyzMsLaTKxiqOG1kTr5+M=;
	b=GZyopzI6RmQZBhHajOY3cFDh4gtZqCFFM4YRcj99l1qFbduCwbW5OS0PJAQ+EbLe
	WmA9rU9apfU8Ljl171j+vw318amXlCfxALp2qTfRuWZ45R0tZbCFkn16o4+uMpwIeMg
	E+n6y/MTRoIF8vlz8EdDRuuPrt8KArYzKMX0eJDU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661278252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adSuPVhAusEZhraEy5dwAnIyzMsLaTKxiqOG1kTr5+M=;
	b=fcLCjWE7bGsPJx6T7MER1GZn+jdE1XAExkMS3wizHToPn4wnkLVkDzyRu+SdN6z7
	rMO1mHCLwrXvAMaDVor8Mg4gzD7nK5415gemozwlUHv3X2eCTgbzWaWk8wfmNo1xAxy
	8D3d6+vOd0ZI2CuLpelAxrvP5APopflwgq+I8yrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cbe66e45-c931c4a6-0ca4-4f04-9fe5-a620f645505f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f1b2872fd9d39d16f49acdd52b24a88225bbfacd29d158f17566e60089c5f77
Date: Tue, 23 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661278252
