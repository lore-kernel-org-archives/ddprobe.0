Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3937A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658829412;
	h=To:Subject:From:Message-Id:Date;
	bh=EAVtphAM4JUdJc6VRrVEq2aEJuM36moH9WRuwWPtXeA=;
	b=GgpDTAwMbtsiFMD4sW/r7AGMXuihqhS6rYbUT88Hc7pUXQedeFVLxxaP1sU3Joh6
	oXlnOLI5yY6SXxisxJgiUBw+asfpGxlRwq+csuWEPTSodr6JLHRXASv6CfJ0v+I6LzF
	DRLxB7IF0wQQ8Yv2odTY7QQf39ax9gMoZumpgZH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658829412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EAVtphAM4JUdJc6VRrVEq2aEJuM36moH9WRuwWPtXeA=;
	b=Ezbb9blMSk8OIHPj+9+p6AREJfq7xHxQu87sqRIv6Bn71hnCIsvzp1UqDfkLNd70
	MxHSlIXD6PvWxApXk0OkTayTz6eRSQnDYHvyFPiDFSQkMcZ3O3mCuDwLyPyrgdqwkzU
	js5QSt95T1uV3/aUJ8t0xZEDjg3RderlyO2E1yU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239f017ab-ee2dd270-1f96-4373-b540-77f218cf4e6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa04e15975d09dc3e7b46af0aaae0bce3fbfe9e11c9e1cfc06520e647424497b
Date: Tue, 26 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658829412
