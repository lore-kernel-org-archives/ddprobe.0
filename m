Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC6B1FAC
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660630852;
	h=To:Subject:From:Message-Id:Date;
	bh=AFdC0Fu6Mxg2Ft9lb0PkZshna2fXZg6nKarvJmMfKGQ=;
	b=EayQ52vJvTU5rdoLF2uMZlIicI2iX960UQ8DM09V0d3d8PczuZPAKQzOS4dofO6d
	CHYxOd2yHwGzCVzxLFZ8MZgW4ZCM7NDtMOzaaAnGq6DajrIdqFZwL7ZtAvr+OlrZ1Mu
	niINQ4WHhdUw/aiOiXG5LEo9N0HChFxgTXNrQW84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660630852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AFdC0Fu6Mxg2Ft9lb0PkZshna2fXZg6nKarvJmMfKGQ=;
	b=U6IH7djXzL3e7xzMwq8qlpTAG5EnCRo67ed0YP1CzGMaMG80I17mvlSv3jDUAi4+
	Q+vmCbO7aDwWyn3Z6AAkioeJwOx+vNBljdKMt+DhO5xdY66ENiejxpPqJB5J8qpPlkE
	ssFJdT8Xo4XLswi6tZaN3OcDURYt2+IjSw7wUQaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a54fe3de-d55a977c-9ad7-47ea-866b-fa0f93ecefbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2ba88a2c183740cd10ff7000e2e5a5dfc64714ee290688490cc531e05600874
Date: Tue, 16 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660630852
