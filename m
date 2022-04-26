Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02309625
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 09:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650965578;
	h=To:Subject:From:Message-Id:Date;
	bh=fvo7vqy+a/dTOHXEIfGYxfYLBIUktJQRcM909B9aHwE=;
	b=Gx/4pNqujqKqb5ROS8VnDpctHerouZ3pPhD6TUGmmOTBvv4ctLvSeTsl59FFXVIZ
	eaIRzgJFIQaTeLleHJFr4Ez6nb95d0qdli6hXhEwDwYn2es+ysCqh6vRQuYNvlVoouG
	v553YAV08oApHv1IQ/UqyZIJh+kwecWJXvZoSI80=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650965578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fvo7vqy+a/dTOHXEIfGYxfYLBIUktJQRcM909B9aHwE=;
	b=NRVGEi6hmJf1DYGxuKaFUEG5G0B0AA/0KLoSt+TKS/5/9rhu+2Qh8xvGpmNXeOQt
	ixRSWvZY5nZbUkvsQQJa+qADzHwW6jhg8viqLgJs944Tk3TDgDa77HqMHPQyvaY2lPz
	VVK5tPZbmx5wyx0G+MYeoXgP1JjtzXpmgBJXhFWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065378221-0ebb9b08-a62d-4fa5-9da7-42e7998072ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9ecef08683b9723ca8877ccd9c1a121f34aca37f519048a58ccf2b88f423c20
Date: Tue, 26 Apr 2022 09:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650965578
