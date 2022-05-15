Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F487A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 05:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652594099;
	h=To:Subject:From:Message-Id:Date;
	bh=4CNvC83hWLj5lJiUT69aOwd19Q+Fxn/xt+cpFbcAxv8=;
	b=RRH/9GVPZIykJvJVa5MmG/PZf7Wnik0NWxQwnwcDcOU4Y5gC4CLui1PjSVXqO3Gr
	ERn6de3mwrayKVl+v5YWjZBQimvs6U2mzCl0/TqgT7LzMFqcYL+9bixMkYEITx6yNCr
	n5K0DDu+ZQGpDVrD61KKB1l7HheCSW8n18DtbYPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652594099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4CNvC83hWLj5lJiUT69aOwd19Q+Fxn/xt+cpFbcAxv8=;
	b=iAVyM+loF9BY+1UTmLc4DuVoJmkRHjemCE6dO2gpMxLtjtnUzQi+fun7YF0G3+Xy
	vVWbkTEF0XiGLWYCz2Cn2UNZuIjaMvbjF3SSffyT1GJXSbO1nxDAA7XpdaqxQkTdvPJ
	c3k1Jr/gTrIDDWd9DUl7TM04+EPic6hbEwu0gkVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c648c45f-01321b84-0e6f-49bc-ab6c-03106172dc30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ce70ae9f7758a693090754f8a6f64519ed1ace509bceb5c5d1c4b5867a202bf
Date: Sun, 15 May 2022 05:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652594099
