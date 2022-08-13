Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC894A3C
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660431052;
	h=To:Subject:From:Message-Id:Date;
	bh=KrWlDxu1Z/SeqgQSfuOD5J4x2z62R7GFWG3zLZGHRzk=;
	b=hz4fzud5FPZv1aquRA6SEZkv34a/faDIZl40VW6BJn8DJaPqMMnM0Xeb+HXSVxZq
	L+CxeqTtjiStIJVQx56eWc4vAH/oXh8TKKtCucEy9LB3fBydutecPMNwlfKcYF8Z57F
	GEjpulnnVdoUvVfj/brpjpdYUl7XIIymh4v1VfKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660431052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KrWlDxu1Z/SeqgQSfuOD5J4x2z62R7GFWG3zLZGHRzk=;
	b=Ch08+3A1ElXb9JTNue862MQaEECdkNMtLUC63b6O5n/xCaWgZUgjWDPraXQGtms5
	iPojeGUubL1orCn7SC6sLDI2MnwJbhAwfWlMdkFtAPA1oqVkFg33BIe1eEBbI0Nh3RF
	sZF8MAoIpcb6+q9Zrn+LjY4SHXZrnnabPJ6PqvcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018299672f7a-5436be25-d482-41d8-b0e6-bcc631880017-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45bddf1dfd13a9d72130f4169c44dba55673d679ab83a39b1b76c1f347aea745
Date: Sat, 13 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660431052
