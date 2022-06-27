Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C53235
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656343612;
	h=To:Subject:From:Message-Id:Date;
	bh=8KDqAEUpejHLzqKX9Z1KL1RFLuT9TJMJVv/GuK3F2yw=;
	b=QWEtZX3qi0qpK+Y32++DfDf8/x/7lbraOtAZBojfNL4U57gPptS6LI+NeOZiatCw
	ncn70EX3/DzkNsyzAUFcXp5+fUD/h2d+0SSH7Vlt895ujWhcKBz77qAe1QgBm8uuAgg
	NIWiFz4CJlmKNKsAdTo5YpjE7SklfWFP7bZsl4tI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656343612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8KDqAEUpejHLzqKX9Z1KL1RFLuT9TJMJVv/GuK3F2yw=;
	b=h9OlLM0aaCDhmVXxgarXyhrggY5nMqGUrj9uC54RGbvfhlCq0DMamq9VpGmMjVDm
	uDNcZ4/Y8F6Bsa9YN7ZpkV0REYiqmefeO0U7p7M4tfqG0BdcrrwUF7Rh8EYoGiMdlGd
	+coiHcvF9Rv7qhV6fn8E+TcRnrEnCpD+cqe4JzK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5c5cbb1-cf8cef47-4035-49a9-b8c9-771b85f214cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3abcf168fa098d1315c5d89f5ea6cc0485422e30e20842e4aae43eea927671a
Date: Mon, 27 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656343612
