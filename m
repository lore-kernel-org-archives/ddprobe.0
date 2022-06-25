Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176767C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656136012;
	h=To:Subject:From:Message-Id:Date;
	bh=utqpxHAQW5ABPEoCN4rLYH9L4skLuBzjf1bXYhkLlbw=;
	b=jvQAudC0xxqgPZjLaEVgRKjWHwWL9mzdAmGEv4TC+pYyqii4V0xaudjhQhjIi5aY
	ffgMIt9wxIcgT83Hleo0meTehr0givBrFfWCca9H+PIgh4Vz2NZ9sDrdUi0qBFZcIkH
	L8SkMSq8yi3bDh24jLc8rgj1fy6M8rGN4UV4SkQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656136012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=utqpxHAQW5ABPEoCN4rLYH9L4skLuBzjf1bXYhkLlbw=;
	b=H2ZRarkFhggmfL+6tb9UJYB8CjEDVGyLJFGMRWCh2UXVqZ9/c3sIfgGMtz4qJ+L+
	8kM8nQI2l0P4Efyk63EZtx+cDI+H3zbDuZDZ9bMQdorD5RJJahp6FcBrDw0nObG6wgl
	OOq1TPsftuEgAZ7GQdeX0WRDNqzujJVw6NQy7nSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199661200-bb2b9059-837e-49f1-a5e5-c2aeea188318-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f73d80c340cef6dd26ea4132974414abdbb4c1744038344176815503a8a36726
Date: Sat, 25 Jun 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656136012
