Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D067F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659414052;
	h=To:Subject:From:Message-Id:Date;
	bh=ZaCzqfc7xUznezYw8eCxjRMcwc40BDirv+7yxhggdnw=;
	b=BQBEic9rzftAf2e7FKcXBZ6Qt4xUnr2zu1gT6ihkfbylvHnoKgguJiUKASMi0nwm
	kPVHAeKzky5nCBNR6nuOTXNj6hT4b1ZXKKbke97Xw8HZECb/o3Kn5sQY8BAqw93NEZA
	1tHTfUjhSrvvg0qUQSdKRT1spMRJ6omfnaNrgz4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659414052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZaCzqfc7xUznezYw8eCxjRMcwc40BDirv+7yxhggdnw=;
	b=BCZuMRBpjAyzraQqgiGrsnwtyZuzZvjOzKIvNvQ5d+DMwqdaVYXpka8Kw6r1jkUd
	G2OqajcIiGDu2sld757hfYFsd2A0M03vG1DsuFsnEiizzeejeA7KJ6NUznEXXNI5Yhg
	T5iiqpN/mFhF83KWzihlxHlxjaIjBrbHbrgar9jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cc8ff2a-5dac62cb-891a-4b00-8bc8-7ecb555f0814-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e895dea14fbaa8a01221f8ab50b636f9ad4b8773c89cc3c68ac7019a3a9a52c9
Date: Tue, 2 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659414052
