Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8293C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659223852;
	h=To:Subject:From:Message-Id:Date;
	bh=PIEg50op74cxy9wRC3l/ddhVNfAsf3+LwAbHuueocCM=;
	b=eanfEER0RLuOZ4D+/HRSn0IJpHmtuJl9DPD28Fh13B5er9rY2dMuMfGbpCtLfLBm
	bF05dEUsgIbP7bG9fIkEfiWTGyAysJJMQXpkCwdEqBS9gNZ7ZWrVuMB+gtKOXWjtkk0
	2JvX4yaQ2Im8NgZid0MpVrgkfjjl+VSlCHq5v3qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659223852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PIEg50op74cxy9wRC3l/ddhVNfAsf3+LwAbHuueocCM=;
	b=KdlCnJs3Vq3yDYnXE5jSZkMl4RTA/HHQLzdL8fOFyqlnkDfsHCFAJItE82mfRPFK
	iPVwNq7ySSvvSorbPLrhcw6YeAeZ/wTuxl0RBCRbGjrndWOr4j2hyhVbNZvHRkPL8IR
	mZmOBJLCyr1BoiT8EIRzopdBcnbu7cqDsM5KbQX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825172c608-8465299d-d3dc-43e2-a4e4-e10c8aea056a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c96cf63d1d7ab6124de69b334ed18a5a973e41e3ad94542e456745672787d27
Date: Sat, 30 Jul 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659223852
