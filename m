Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E99F7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 07:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655536859;
	h=To:Subject:From:Message-Id:Date;
	bh=6EH5tXjaaxvRgMlpmqR2HFiRmzVlFwuscNg0JfdR7nY=;
	b=OnPuPWN8fj4xtQSd4Wiv1xD2+S1nZMw6Me6SIUZmcBMzwPVPVkfsc46hb7ucOhPU
	2/PupqxqsiVIkXDR+KqBYA2rgtjVcMq0ey0o31z4eL+eg5mI6U3biRv5Hd6TK4cNEr7
	i5Oj4r0akbEIpTTZZuriTQAyIrUwkSx9/tS8oX3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655536859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6EH5tXjaaxvRgMlpmqR2HFiRmzVlFwuscNg0JfdR7nY=;
	b=X1of72fsxSGldEawUnQp+vcOA6EmOELk47/Jkm3aYNxZgEr+3C0nZ2f2mQcP+kiY
	+/k6ApDfi+WxR0gLMGIgXHg8c0rTAM+3V3adUc4rkycUqkwkrm7jl6ZZJZL8/89mmOt
	r5vpAvVlqtMeR+MVtWjRilU9tWgp6GNIaEQDUS4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175afb89f-6aee20b4-ada6-4ef6-babe-7f49199557fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b32aaca4d4d45526e484460e89902f784a187032c8a12ac5a9944f1b531cc3
Date: Sat, 18 Jun 2022 07:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655536859
