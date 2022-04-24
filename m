Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5DA7A
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 09:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650793618;
	h=To:Subject:From:Message-Id:Date;
	bh=NtItcbMszMcSdmHe7YfDClsIwcvvClCeqAgfbsOp7Uk=;
	b=FmzmAqoqpQsLBtLn240a+itVwuOQY8N5hsvlvf/4ytNcYiCzHyMpYcbI577zfYXC
	1lJbn87bNqXiYWw5j99uA8XHcghc52e11BjqTsM+JSYi2Ifw2tA1GYsaskPNlbVby3n
	XYMnt0HoFtMqub8lOZ64/1yjVIkhFdlbh/JnbQ8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650793618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NtItcbMszMcSdmHe7YfDClsIwcvvClCeqAgfbsOp7Uk=;
	b=KuXL7OJColl3FYfw+LoXPXNN7VDBp2m3hTBT34gCUTku2S2wAj/SsHpBxp+4Jnvx
	DLQztESackF9lxBSpEP6yXkrgX4bpuHWSek6jTlsEP9hk5Pw9du0ZtxV4XrVMh1Vzfw
	FEcbn5WFecBLF+gUmp2287M9FYjeLldAjKBnpI9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805af79b62-38ad4758-9992-4c69-8d2d-f6a4ecb4fdf3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 141e6d09c755175c9c6e0ea1be310d3d91792683160129e9e720619d9d2a9f45
Date: Sun, 24 Apr 2022 09:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650793618
