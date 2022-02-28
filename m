Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621813FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646023884;
	h=To:Subject:From:Message-Id:Date;
	bh=Lju80Gg8BEm+UgmXf/v5c2HpP0AOzYxRAQcrVtVADXg=;
	b=Bgkv4vAq1wvB2DsWOp/rpq4RgvXX2aNUg4/7spUskAHwiNYZ/KvqeSqMKqPjwRCV
	cid64SptpuP9DDsp1Evnm7GdbwShFGoTotExwwd56CxS/RMpa8surnzu45/avj7qBYv
	Uc5SLPQxRsB5RCw08xb+wKlvXzHVu4wqZH82Sbrw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646023884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lju80Gg8BEm+UgmXf/v5c2HpP0AOzYxRAQcrVtVADXg=;
	b=I83riZXnlObAGpVpZg61tlfJwhhZkKiURg+vV8txR2z+oHYZcNL3aQJrMrmM72WG
	0AOCOeCDpSC04fpdZ84fTjIXV8RgRYI1AKllJrteYsud3tR2UVMCJalUpoZ3fVIij+c
	EwS0HJZlSZxCefRvGfLqRfMHt0rfmcY5btUPwS6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3eab3fd7-b4572a09-5cdf-4361-a3aa-eec57e849925-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a99efcdd7c011213f4123c0446e2991bd319b98e2cf9cc10a67a782136450ae8
Date: Mon, 28 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646023884
