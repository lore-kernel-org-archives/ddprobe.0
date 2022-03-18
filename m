Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFFE2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647597984;
	h=To:Subject:From:Message-Id:Date;
	bh=wf66yW9ls8BzG3m7pDfi5s3Yim6riEnR0ZEsFZ/PXlI=;
	b=JMsRZt7ylNYmqmuCBtRnw1GUf2taPApiiA3Hj2V7EPTHmqwLq/VJA1hCsvrV88hZ
	u+LQiROlr15Ppk/FabtP/7ChuGQ6uUJXjiSS71AV49qzAObGSNLgY+Q2dLtMASa+FEp
	TtZUYMgIBrUPYmmICt8hTq3pirTPVNr8CpQnNgw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647597984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wf66yW9ls8BzG3m7pDfi5s3Yim6riEnR0ZEsFZ/PXlI=;
	b=QKhSlvgFtYKQzrRjbPsdJW8Vws4E6MI1sV6H8MUO5IMlp+SLLMXA7AjMxJe51v4G
	6QOnIcdbTkK1CJbP7Pq20FhQZtjouPOT2BGqCn9jKKZ2Xkf+XXvrMqE/mFQI+lfdzd1
	SGM+d2s599YyuK2Fw1noNVpL69+zBK7u40Tpya4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c7e1c02-57378ab9-d3c0-4470-9f9b-a46c0d7de7da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 079fac04b06fa166b620cdd45a836878e9ff8cd4df4291d15630feec02594fa2
Date: Fri, 18 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647597984
