Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94FC10E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658225212;
	h=To:Subject:From:Message-Id:Date;
	bh=yhCdQpH5xh4C6RceBoCH/telFuRwRtT0H17HdgCrsFk=;
	b=JVlKpc2IO9gHlmvgqJnnflxi7OUcDi4lQY6VuoJIqGHDtx1qFtsfKHWGmWA1ROw0
	EWHTbG1BA3LHhkgQJScT+nolKg39eoRBiMzKuIlp8e3elUbBFubzcv+O+qhkybH5fRa
	wMuS8P8WRb3cXoqzpKMwZCb/eoeKWfx8ixSpZi6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658225212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yhCdQpH5xh4C6RceBoCH/telFuRwRtT0H17HdgCrsFk=;
	b=Mr/n9Iqmb/1p5bq7stKkdaf0VNOn7gWG6LRPXTVQHqLnx028TOvKj1lT4hszXDYE
	uYR3O1BdH7jRvFWbNxqg6kwwq3MUJMCb5XI3A7YCY0z+lFjbNdUakgCsx74K/w8cwZL
	swdncJzYxjSUYoYj5Vgkz6C81/8XchEJFu5962Oo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215ecbb5a-7baf133f-b2d9-4efc-a657-220380904d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc4395fa677e66f638011cbcca4052e200fd5a28e48c859d3823024b70265289
Date: Tue, 19 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658225212
