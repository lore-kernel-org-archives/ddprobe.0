Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB0336D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661077852;
	h=To:Subject:From:Message-Id:Date;
	bh=kBzZ58A1+7yhdBivX7mXaPRYqYP9Gmit2S/mc4PaTkQ=;
	b=Qqgk6/YALOOnnP+IPwz3cqcIZztt7tvNSWdrtKCXKwr8809/yaw61oQk7WSLHrbE
	p27janYVAzg+qSc6PYH+k4c+nu/KR4JA/fqGscGpt2pWzg316nwYB2FKYBP9keTsom8
	CkL4xXcjL4TTooGEYtAR6cF949Vml1c7v3Ghi5x8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661077852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kBzZ58A1+7yhdBivX7mXaPRYqYP9Gmit2S/mc4PaTkQ=;
	b=OnQWQgRnLQq6uovMckaXltGiO+dpCXoBp5RbXf8fw6OLNAjbAiLu6SNO4Xt5VVAj
	BiiagX8ZNZ2mzbGnKC4aJpsvotAXiF8+dhtUwQmuaQu/vgdfuO2w+M9D4Zjaqwz1d9G
	JfNOoWXJaAZ62+zU5Lz3AXivunbg5fd/8Z3VLnPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bff491b0-9973873a-2eb6-4aa6-be29-a92f5c63e374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b79220af05902f5bf9ecd708658e9226a984bfdb3b130b64626e84c7b74d40c
Date: Sun, 21 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661077852
