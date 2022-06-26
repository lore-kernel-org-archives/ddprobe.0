Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B212F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 16:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656262612;
	h=To:Subject:From:Message-Id:Date;
	bh=RVH74zxUjjOZfULO71m7cNnAIxC93gwlmyYvBG0GClg=;
	b=Y5POwqdlcVu6IevAJy7nyMZyGjYePVRCJ3eF/KbOA7IExnTuGapojoYVhrQxxuo3
	zE2xIY+yGnpEgeRVfbllYG5o4UqpL9NQ73OIrznS1TJGW0I7Wgwpdj4sRVUV05iJgDk
	ZAndFmUbOJnI/RKuQS1bAta3zjbozUD+dqWBvW/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656262612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RVH74zxUjjOZfULO71m7cNnAIxC93gwlmyYvBG0GClg=;
	b=brylDb8bAixgsc8bXmMsY1zDMT5LsxRFYX4/VW30lJmmr+q6LMf2K0nAfGXF1fQn
	ITo+7VT9f9zKNwU3Xwy9ISKke90zXKS8CpySlJzxT7pXUvR2Y1j5/1NlDXFYaFiekom
	jJk3qe3DUBz1wAcKbDfkEYIIMPr6A62aWpKm03ck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0f1d537-f9a0e191-78ee-4c0e-aa4f-de347885e493-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4238f6684073ff4dac744b99ed788de04625512410e14a7012c52e256260d45b
Date: Sun, 26 Jun 2022 16:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656262612
