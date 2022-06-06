Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B18B1854
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 00:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654476719;
	h=To:Subject:From:Message-Id:Date;
	bh=CsfqXTMf99fPP0fmiUUGLdUhAfIFincHVh7XadZz9tI=;
	b=bmT7x7jNOG2IBw6PhZ+0bZdMeKzMCRNvylvSiotQAjRsCCZdENcSIQqeUHfUPUYL
	2QVt4uUJGc1yusJM6/eR8bFmgIJtpynghZnj33wb5itVrC9tYrwAIXLQSccRX0JJk3c
	mx8Gm7plb9uzfk7rcvwmeu8wU9lZQpSa/L21/zdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654476719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CsfqXTMf99fPP0fmiUUGLdUhAfIFincHVh7XadZz9tI=;
	b=BqSjmVsd7iPd4SbxD2poSYuUXGOOoFkUKNTSEvWdGzz6stUWlAmODsT61LAYdrHO
	7xv4D1UBgjn+t5IOv5iF9BJnxl0pD6d68hNrjVdnZLniM4yEq/z8QjbqhG+hStc5w1E
	5eOMaaG+EQp2LtgiQGHFj7CA7Pt2ybVaV8QsUceQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181367f44aa-7e17950a-793c-47fc-8f42-b14837d95bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ccb0d9a36d505b2435b660dff6ec9288ebf8d109a760f9b877c898921779d31
Date: Mon, 6 Jun 2022 00:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654476719
