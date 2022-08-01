Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CE27F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659371452;
	h=To:Subject:From:Message-Id:Date;
	bh=k0uycM3kOf8KQK1FcQXB5r41PDLq4MPz5GpuV/QvCyE=;
	b=iL3uQ6HdDgMUDTGPgig56il/5duOduNwnRMnZilJqoneXmGqtmLGjU/i9ENOPV24
	UF4mC18VtARdJZGGCphtxUfLRkBK8kIdtIWdtGP6zX7ALbNpzJfY/VxIi8pCQ6m7+vg
	NlAu/Shnbx+qbJ0QezbA9Uu6ITgk9HBJvmIYIXJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659371452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k0uycM3kOf8KQK1FcQXB5r41PDLq4MPz5GpuV/QvCyE=;
	b=BzreBEjn2zkj+ghLudP8Ddogz0j7hTyi8FIeIcUI0S5Z+2uGEyo29JPcuqypmUii
	YsbN8rtMqdI5YUUUMMKDgwxP7xrgFi3jnuivDwkrxgktgRU2koLLx9WysB9fEPx6IE0
	K2dXZeMGm13IE/dVj+vNXRs6nNZIumvlTPfOGH1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a3ef87f-df021452-25c3-475a-b252-ad0d75d6190e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 392ef281383f3be6c82f4f01884d1450df9d59eb68e793ef0f87880256642b2f
Date: Mon, 1 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659371452
