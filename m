Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91EC07C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659813652;
	h=To:Subject:From:Message-Id:Date;
	bh=R7OMfn3ABfXTT5qLfuQU3gZKvbVwhS160FZQX5P5VlU=;
	b=EoaLPjj7Cv7nsWqRoBF3wSkixhTw3j8r+xdg3fHjoRE5dUewUCEW4Mmf3fj7ly9E
	wnu3t+CfcTNZjQZz6JBjtKv51yzugWDhlapCjlh7LOl0ebGVzz6KXW46sQK07s5PwBg
	wCt1Iq7Cpvx718v5ahL0Ivs24eT3qTl2HmJ9GJSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659813652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7OMfn3ABfXTT5qLfuQU3gZKvbVwhS160FZQX5P5VlU=;
	b=X8BZif/cJW5Otaa10YMTFkJd9QAmr5vdq6uVjWJBZPkWVfqWZMN5InrJBBuZm0g8
	Bxqq7KBaED0xffscV8s84VwfjtzLUTC11yh0rLXL9Tufh3GEcw8uxkrBT/O1G2Ksvfc
	JWzkOKgoIUUF2xIKqCeZT22TX/NPs9NpVmR+aOzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182749a688e-ef538148-47b7-40c7-a455-b1cacce61a3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68bad61324aec0424250efc34d07e050b1e43a5a3f6f63b0cd50bc420614717c
Date: Sat, 6 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659813652
