Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD75E7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 20:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655584559;
	h=To:Subject:From:Message-Id:Date;
	bh=RigcBynIJIfYlMP6N7v+2aKyGLsZAl8/wy2h81ICmng=;
	b=ErG9PC0+tN2JKpdZCxfoLBGIFNx7GhBKdu/QHu0gwfmavbuR+VkKrfimkJ7oKPCf
	JG3/E08UajwcVvpOHsHL4+ITlKRf/P5YE2M2sRXKjjCeOR+6YQLi42t9s85Ng6mf/lP
	LkNU+LQNLtRfWVjdTzp+U6ArRGbKZlbctlHm5+iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655584559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RigcBynIJIfYlMP6N7v+2aKyGLsZAl8/wy2h81ICmng=;
	b=Fl60l3QY94NxVkQlgtcS/kEoE9aeoRc1JJ9ARrjpHPm7RnQoNRvOHsPma0vcT61P
	7Kc/3Xf4hR4buclIDdhqyASigi/7P/3ZccGnBfdMYOyyptUo/rkgfYaD4SfhBMWvfXh
	Adf3g3mw9tuyTbMzB826QM8sa1kQj6dg5LZEXF1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178879087-5daa8cc6-9300-461e-aeaf-6020657f236f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10ceb8f6ead474f4aa1e0271636fc53121a0b9bb61979d2db0b44f26cd52afb6
Date: Sat, 18 Jun 2022 20:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655584559
