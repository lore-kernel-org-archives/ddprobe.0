Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBB233E4
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 22:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653950759;
	h=To:Subject:From:Message-Id:Date;
	bh=KKtDAPm+6u4D/XsKGdVWcX0JZIGTDdtHZhy4Gz1m08c=;
	b=jaAaaabtT08dtobahpwgVKRBvSqlebgz/cJgugFT7SKCfO26NzYpTKh5meqATyP9
	PvVYaH1tJ5mSkvTKC0aQ9ArIUzUyvpjgOG7TkajR7kSQgYOoJsFsKdXkX/lyVWsu4k2
	6ItlkAxyMa3313woV1otSOKCtWS1VQnYIybylr7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653950759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KKtDAPm+6u4D/XsKGdVWcX0JZIGTDdtHZhy4Gz1m08c=;
	b=MFRNxPrHpkq2h1s9urWlxGWkZU2HXiWR744Fr8lonhXzwR8bFCLE0UVr1eiJIIjf
	sct3JDxFRudYVhLLpQO5ZXL7I3ukAFibST1WUDuomPKUkURFvwTpFC/+8/k0XeAaGCM
	t/MxQMVrvxszmNYlLSXv6aNKgI5IXM4retyo1sXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811725c18b-dcc15a64-982f-4e05-9486-6747e2902122-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ccbdfd302e491025da821556808b4c73e96ace406716fc5d547f7407d0e7a45
Date: Mon, 30 May 2022 22:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653950759
