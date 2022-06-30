Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840FF7461
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656614213;
	h=To:Subject:From:Message-Id:Date;
	bh=05PJ+z+5O8XSr7AWeUNeJnq6l1upOvVEyj8nJvtXk5U=;
	b=LXoemugop1xA3aQFXOdabF++C6i9F9btu0k2j+1ofK7Xk1iuOse5pbvmntpJIoa3
	QCxzqkuncqZodwTV+YmBiLlYCbo4weGY+KY60y8/A8jFLbCmzZnSKqsO2sZXohW7IYo
	pzi6Ne4JgetcOFbsBA0bwpsOa5jkshoTNBTxSSFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656614213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=05PJ+z+5O8XSr7AWeUNeJnq6l1upOvVEyj8nJvtXk5U=;
	b=CyoWZTYgwghXaEEUAUK1c6KQOZVL/myFDm6IrLWHDWEdWwDHMlkiQ308eGEQR2Ow
	a+ElJqo2UeZ7ayG/2YWwWNVPm47Lb0U4nX9dGFmcMCUN8GvTl73W4WnNZmT8rlnV7pj
	lKNWO4CrwbmrFHZh5MhOsP+e3TXNG8gnKajnJdlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5e6d2af-c4bdf84c-ed21-4a6b-8332-380715362527-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99f7f6bfb0ac8603d4805c7c01912f019c079cadb31341c9e15586705228d121
Date: Thu, 30 Jun 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656614212
