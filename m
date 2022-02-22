Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A53B7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645496185;
	h=To:Subject:From:Message-Id:Date;
	bh=5q0r9GOLhPxPLSzheXgTxwI1ih9ORZEkoKT17GfhFzw=;
	b=BHdrPMiZkauOqEM5DxeL14tEH7k0SE8spZcCy+cVv4RnL4ZnaW0WX7SGXkdJFxQ8
	AwXsJSkOm8AfYxWSGNAFLiBcfIm6l1P2ZE5rzCgObtSx3yLQcje+pyCInKqitsUc44i
	bAhwMNXpJgKo7lh/Tg3+cC990ICIXwlcdu7zcXdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645496185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5q0r9GOLhPxPLSzheXgTxwI1ih9ORZEkoKT17GfhFzw=;
	b=XDASYY1znGH9QiASjdKdtjmQuTbUvX9mz61Qh4fkOD6F+bmnBMRejUE3so8gJlni
	pOeyIPNZsEQV3NUXrurinGUapfOeBgOQ9P7gBxbgUDzfAuWrKIgS5eJLmwq6xrTllZH
	svYmKXFRTn8mF2Qn8kKLgh16z47hUMRchJA1MTHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f372f98-01dcf6cf-63a7-43c5-b767-88da351d1ff8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d3d661508271e73721701a89f2be2b7807dc82076ab82042537be249cb625f5
Date: Tue, 22 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645496184
