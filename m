Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277A515A7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656125212;
	h=To:Subject:From:Message-Id:Date;
	bh=FMiLZ0Cwu6vjY30RXEaqYL+5SuEEnqMR8FgoM+zqMUU=;
	b=WKmDnRiegT8KE7GIKaJk24BS/k6xPMZEWQUwcB/3KMnWCyE2v5uNZdn/0yjXBjW7
	yqXmr+4ChdSuNUkUiiEQH1tewZSok4E/QF3gzWlmKFaga8SzZO7Aps9tKHptSLGBuQW
	dscIP4Jrac3l4TIaSjNeTN+WFRmwXKUnzeVdACsA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656125212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FMiLZ0Cwu6vjY30RXEaqYL+5SuEEnqMR8FgoM+zqMUU=;
	b=bPS01zvk7n/Z6q1g0rnUANh7xPt4tiwMndFxdoGarLVYFJDu4xSoG4mWJMQzHUSZ
	PWX3+dVRwLH90n/l6Yz+6eSZOEr8WFw3WdTqDySXkdmMwcThMqa+uYYKtkdMrb6jC7H
	O5wnr8f6TvJ6Mqbm/POueSj/CUMJJ53YEcOkPsh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198c146b2-aa13b13c-630a-4f1b-800c-19916806d234-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3cbbeae7734a017c8b339cc16acaccbecacae3098d93e6e4fed2d20c2a7a09f
Date: Sat, 25 Jun 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656125212
