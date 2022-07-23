Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BA77E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658608612;
	h=To:Subject:From:Message-Id:Date;
	bh=adZZT6VN1aX8zT98sjoww7lggUBFMqYNsMPnb8EFVR0=;
	b=XrDpgMyYismy3eErkvgaaFIiHvdWrrjY2qBJWWJ2QTXok6/1V7s9GAguvAj5YnT8
	kXaeXgCki8HYOgt3s6lTRp5c8XFQVjRsofjv+MJsy+fHRMCTwXqH9SId2wEyc0ckjxN
	k+nm6TqCS0NeqOSo2JTOaDK4+Z1kJEEu1X2FPlog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658608612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adZZT6VN1aX8zT98sjoww7lggUBFMqYNsMPnb8EFVR0=;
	b=P5/dHjVUHMv+BdpAviIosn3n4XSzIZBS6vtpVEynbYbsONqtvbs40Ma8L86oVoGB
	PJPmKrmiz5tYvaQsbj+FmfLVgNIxJOVF/f4KMD9Cvm7FQmNNsBWXcTCgwsm971NBqGV
	sLP/eGWlMBt4qp04IyU9rOF38J8mf9C43KQi/H/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822cc6f3e4-31f56682-0ef8-43de-a164-e60d7d60cc6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12f3b63270cc1fc90f9f24771ac15fd0b99614f4b6a3b16241427fe433bbc2df
Date: Sat, 23 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658608612
