Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5466615A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659231652;
	h=To:Subject:From:Message-Id:Date;
	bh=KH9sz5CnTW5tykq5u7Y+5XA2vduwq+8kn/XZAaH31l4=;
	b=kriJ8d6IHXwqe95F77al3cr0aJd3mS6lDQV7muy4uwc8z+U1HWd7IokWo8TTwe8n
	+2DxYt7mPYxCII3bgTATkt3IZDkjfUXqq0IRD9BcOWy6mkWgLwS05RHm+DyXbi/78dg
	EDCC6avgxtwDWR7qNDP1bfUyaCJawl4jfNRTndCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659231652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KH9sz5CnTW5tykq5u7Y+5XA2vduwq+8kn/XZAaH31l4=;
	b=EbqzUt6ZOylFSaeqnAApsZk3sYg5PKeHJFHPjq7bUKD20/4NhkAs8oseGZNbbYT9
	s/6pJPb5c0fIZqVcTuWBi/pBbG6OpnccS32l7PsVwoC7WNv4V958y/i7ZGUxLGaS/jL
	4cfpXxoPksg+1Cc4vHDiC3nWBn8WHjXIqdQl8XEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251e9cb19-16f2bbbd-b639-4251-bc27-20ede743ed75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07a0f702c246ae527c0e73806068b7dc85dd6d26328645f57934d9f7b03037ba
Date: Sun, 31 Jul 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659231652
