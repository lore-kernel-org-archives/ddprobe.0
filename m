Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDCE7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 13:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654607219;
	h=To:Subject:From:Message-Id:Date;
	bh=+lVFkGbNUbEQCckvVKhaaek9IefGaVORlCC38vI28/U=;
	b=gIoAAEf/USdYtFjkuDmSerrSx3xjFPl6aosaeJ0s40MnFHc5wloNurC2kNrNqahA
	S7uA8wbABUHPnvOxFnboQi/6kQPcum22/MN4GJlyHvQcoozRwQ4za2fk1aRVLXrPH2H
	JunlZ9oBGAOL4OlB1E2YtwweTyQQqOphsui7xZr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654607219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lVFkGbNUbEQCckvVKhaaek9IefGaVORlCC38vI28/U=;
	b=Q3cWx+qW6ML50Bd+TyYzR3UYwAIrMyzZiUr/gBj9eBZkWHY0m3A9b8XTxWEYSR3A
	8JgRnaWDwatY79V9qyVK8G1XqqxED5hZIcerx7eLVLwl6VDzET9ckARBtKfmROafXgg
	7DpmIltD2zusbbRpWFXcW0V8KvWrS8jSNh4+tV20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e468a13-01a99c21-533c-4aea-bfbd-d4d29dd3f3ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec3179810f79695b2d0014d279497ece899972f8aa191119301ddb9a27ff0161
Date: Tue, 7 Jun 2022 13:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654607219
