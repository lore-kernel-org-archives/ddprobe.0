Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B9A3D81
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659082853;
	h=To:Subject:From:Message-Id:Date;
	bh=nJuIxR5AqodSD98JA5vLz/17aJtU4krfEkQ4nsOb77g=;
	b=DCEVQnZtEWqOS5Uxgl8iiZz7suoun8GXf94LqsKk4mcpAdNiiBp8R6mAtiwI77+F
	Q/VbliTJCdCWbtvU/fL2Qi5abPOjojkAWyHvSuTivq8cfqBwcyWcVm+cDb9zRHUtIh2
	Q96e0bb9zRuOuN0B6oGHnUDCRy/rPwT6PZFDx5R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659082853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nJuIxR5AqodSD98JA5vLz/17aJtU4krfEkQ4nsOb77g=;
	b=ZfftEmihnRjpOy7U3dtNEPQhPSwhcVI15n0ZZuUwy1j7IJh3XVOR/dqIqz+grRFM
	t76a4+3s8fcOd4noAl/fGFRxkZnmCOF5+yVPdxQAUKrlu9WlDAOxorKp6MBLjreBpKM
	6l1phFY32Y6yRq7Hg4PchpSIxJshkRAAh8jLHs4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182490b48dd-e3ff5234-1ab7-4d16-ac48-daea84db9644-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c3ceb3319670735d29f36eb15372564626b463f8abd39d8d8ea7639b2b47c0e
Date: Fri, 29 Jul 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659082852
