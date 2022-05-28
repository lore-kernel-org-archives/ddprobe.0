Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E985428E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653754319;
	h=To:Subject:From:Message-Id:Date;
	bh=Sfgt2YUcXKsapYeokRv9jC0hoMCtK/g+GlKbUV8bkfA=;
	b=CUMWZ+4anbEvlQXLSX0OSAjlLx2uyhJBHWXkj1n3fJ3BOKdUkksasNss68sNYbMx
	27gokt8MHyv8lmhRUHsyK0fnWfZtoMfP9/WJTj2DiYbXjcXKLNKPozxs//L93x66mRq
	GWHwDbABNrlR7PRS/H5c5owMFLB7zwbQMqIookak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653754319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sfgt2YUcXKsapYeokRv9jC0hoMCtK/g+GlKbUV8bkfA=;
	b=c8UCH2DA7FsClCoX8qKSMD919h0iWM+hvNijvK77ngWvht2pXv9E3JCpNY7OGb1m
	kdZDE8Wrrn6xlpoYh4S5liUyOmLOzCkFi7b9Rigvz1ctu+7kJtIrjtYAObihXJBwWOV
	LzP6IUOYSU2REmucSjba1y/C0YxvuyTmoVBQT1rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b70517c-c152b3b3-4f39-4581-b230-de058602125b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5623faa59fb1d0387b645bbc07e96d0153e0a9243731f7de6ade842258f43c9a
Date: Sat, 28 May 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653754319
