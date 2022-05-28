Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019ED23C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653730979;
	h=To:Subject:From:Message-Id:Date;
	bh=WJtImp3TBFHKY1FiyHs7qo5FMyXNHj4gpMBQooytK2k=;
	b=Zq1B7j5evF0+Y2rhkYd2X8UQKz56q179s+XTIohS15q4/XPh357iGeNRJ2gy25/5
	tO5sC0dI/qX6BiXg+azpMpHJvdi5GTx0hmnIZvy6cmzdcCCU35N8+fz0gyNLBiPRCoO
	nHu9yb0O6SBDtfnU1P2YligssxLNiwUnZbfEeORk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653730979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WJtImp3TBFHKY1FiyHs7qo5FMyXNHj4gpMBQooytK2k=;
	b=dBFwtpTY3reMYpwZFrBa7tQvayzhMbEjr6ukt6yAuZw67ZtlLkev5B1hOem8v64u
	7sXeB/jMFgPo34uxIHHVHM5YXyeCPi0gmeMnm14v6wP6yTsqiFIJ6GH6mzQ+/eR0ALr
	Ta008b5kieNbsSA5NmC3T/sSR7BUBk1WwxJBQgsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a0c2db7-09a8812b-9a93-4ef9-aa5b-3ed308a453ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 642419d380503f46a23411ea6a8d2f9b03e27d514861becd1e0c9f10d58bad33
Date: Sat, 28 May 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653730979
