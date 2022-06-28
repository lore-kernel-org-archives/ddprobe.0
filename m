Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110B133D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 23:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656460612;
	h=To:Subject:From:Message-Id:Date;
	bh=mdzQ1w0pAth0u4125k6qGHqgXzH1XaPjZKwPRK1y/Vo=;
	b=WxjPrAkDreHLbMt9yC888qpPJn4mVFxBT+gaDuc1wVUcFvUkg98ru6EaqbivLWN4
	/v6x3cOrPqYeDFG5ZM5SO0wTvSfzueac6+aneSpY8K3F3149R8RvC0NDuZNDY1riWPp
	ENZYv/C8c6JxqpDKtESAV99whc/jEV9/gj9REqmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656460612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mdzQ1w0pAth0u4125k6qGHqgXzH1XaPjZKwPRK1y/Vo=;
	b=bypv+m++k8pXj1SRzG5u6LtpekShCb0FAVBBblhA4o/hzVUWxspMmNcdPE3CPi0E
	ElwEIJJWf+Eh6V5T1IdwCYoXyDFYSnYkVoK5vXec/dM7nRZUBgUd2cLUBVUz4K7nH/V
	RCLWxWFtqAiUFt9B9uptLKWm2JZzJYXOFnAsYN6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acbf12d1-58fcad73-fead-4109-b4c6-82f57dfdca53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69f606a0529ebecb0c0b027278c7aee5e62cb24d0f987545dacd31ca06fef0c6
Date: Tue, 28 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656460612
