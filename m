Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 861F8163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647704784;
	h=To:Subject:From:Message-Id:Date;
	bh=glpkklFsY9cyqhrlOATfRyVqmctzdyf1zJn6y4u6PZU=;
	b=VcSct7VVKmZ9KJcr3r+OqCGUCCh1lKeHcQ5yXvMExUfRgAj9SdDejJTFa2FSDPmZ
	5/f8/cHRwvWBjpVK+YloDSjzZpWNWCIhaVlvwwXvbszfErS3//66cZICECmgiFGSCuo
	BNxTkQY18zmh8UqfcDc1wtejiwX1sj9eW7ArAOZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647704784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=glpkklFsY9cyqhrlOATfRyVqmctzdyf1zJn6y4u6PZU=;
	b=ilU08GIZetxDut6Q+DaRJIBQCBGa1ZUKNuJxe9EBaBSN5A/nVHTRUHeZUYqHH3rZ
	0uVzeBzCsI8vZai2ned5CkxPwrVPDzPP6pEAlYMfy55mGkhnZOeS3iQA2NIR/O5nlD9
	B/MUsqa9l7hdmq+w+7If5A7dqyMtT5HzN5PiOe/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2dbbf6d-70d38daa-8c4c-4d19-9cb2-457b9d781657-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cbb831b1df81bd3bf745b08129310932b9a17bc95e25be54fd631c7f74ac468
Date: Sat, 19 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647704784
