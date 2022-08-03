Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CC963D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659525052;
	h=To:Subject:From:Message-Id:Date;
	bh=DsMU5eFPtiLtKWrtZfiw677i8msKJjBMBIrQgyItuE4=;
	b=eyrfh0s02D5kesI2t9b5BfzR77LA9W3+I92kU2914wkRolhrQVlctkUE9nO+MvVK
	TGzekj5+SBZqWwzYFldR3T6v1Ghf0bSfbRWH7OuPuk7lREhZ+LvqLdG835DgdxXPYRX
	3XhJ0aI32Y3CcC4jV3jaJHXnAkiphu4mtxjqITO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659525052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DsMU5eFPtiLtKWrtZfiw677i8msKJjBMBIrQgyItuE4=;
	b=YgBZtP9nNv8SOllzmRBAwCp0BpjQGjMF4ge584ECJwDADn75g+NNGOMjTPS8zK+a
	WLLkgBQZNAs4OzSOqmiCLRJFoSbhU6rh5UIjT4l1Q1H5eLssKNLcK9ybfc/Y31fAUyW
	NhlZ9rZJIk2WTv4yFoOrq+yekdmH3Q3tpWKbF9so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826366b8c4-c8c5e991-2f14-4a23-bfb8-d56b3156b28f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ee694639384debb097968098988c29cd8e0c46df3ddbb6a01889e88c43072e7
Date: Wed, 3 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659525052
