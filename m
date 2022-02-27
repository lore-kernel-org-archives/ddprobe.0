Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEF12F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645932684;
	h=To:Subject:From:Message-Id:Date;
	bh=/suY3ApFZE5VOpPY1dLbjvNaR34WF7h51Z/Vg83Ui5k=;
	b=X5rMlj8qXtvEi38CDKUgqn6fdLvld4c1hR9f6GmxVmY0Y4hyDbMwLc4VfE/07YSJ
	oJCc5/UOcpAGf/7pKqIq0aDJ2E6LWGCowTPVYjt5OgDjQs0X9OXhdZ2oTgsUYlUS42c
	6YjoxBimz3fnOTEdMceZIK57fo/4ThYybsXxMGvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645932684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/suY3ApFZE5VOpPY1dLbjvNaR34WF7h51Z/Vg83Ui5k=;
	b=B6pziFZ79snK8J5KvJqhQJiTjfdJRw+nOYCoPsOtb4RKE4izauGFEG9sdG4E69mu
	XL3hn/4M8vrcNsHi840hi9NfBeEPKkpiPbLOEerzE7a2k2717CR/usjimTcVkhaXlWG
	UwJsh6Gqyj34gRNsoLk1gL/6hP0y4m3ag66nG3F8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f393ba5d7-23cb0b66-ea38-496f-b43e-ed57cdfb47fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d00e7ff77420fd1785f04a90814150498ff815b856089468dc128afe8bd84d82
Date: Sun, 27 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645932684
