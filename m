Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F96D7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661218252;
	h=To:Subject:From:Message-Id:Date;
	bh=JW9430nf+of+xxCT7/QHMJEjcH9acXzn7Rh3XvdkgYc=;
	b=egWEWp0ujgJDVmN76NN5Rk8lyzK3qEqZA9wTmkMpcVsCSWyQVThJb6eGsbr7+KV1
	8A97j0omA87uH33EDIKcX+UREaUN8dXl/bf0YOaKS0tPTSqVz6PqIC6HCCBClSIBmyX
	QpWhYluINj3lCHcvXtoJtPuYb4kH3KEr4b7qdsco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661218252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JW9430nf+of+xxCT7/QHMJEjcH9acXzn7Rh3XvdkgYc=;
	b=XSROvlmZaNCAU/snuqh5YtVfFPbVYeZbdgTfnWgYxRm8SiEIhL2mS7pcAGOW84ye
	B+yZGKIQL+mezVNonxOmR/GJWk/Cl2AJpvUu9bHsRfVkwg620Yjxrov0xQjon2Cifzm
	wWh9Lay3MYtGK+l864Uo64btHdOZpH7AMzA0koLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c852e711-3812014d-7894-4d0a-a41c-890967197f78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf07a1398b8c6dc97b4fd3a514416e00e34c065209ca8e5a9926a2651765aee3
Date: Tue, 23 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661218252
