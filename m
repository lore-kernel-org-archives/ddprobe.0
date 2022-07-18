Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192971C07
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 13:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658150812;
	h=To:Subject:From:Message-Id:Date;
	bh=Bo0Fc8pDJDGYerZvkJd703j65u7VK3VsY97dLpK3WfQ=;
	b=OH6HMxhnR5I2/7th+WpPTBgAZE2Q1e3nipXQ+aER8a/BFWmuCOWai0sULzqdPSZe
	AZG9aDZlyB5myejHTOZ/USk1nYC7sUe6GPtBmVQVLS6O1/2WMFZ3FnB/0aEoaiaL/oC
	m7iqZQyOV1I+G3BlS95FzVwX0KqbmTdo15OIbD3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658150812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bo0Fc8pDJDGYerZvkJd703j65u7VK3VsY97dLpK3WfQ=;
	b=h0gIE6GiA694z+lyYNafdkg01y/vbzR88KZXf3pamLJml1Luu2Q8r3jRF66f0ax1
	H/I4jYCji3BnhSEw/eZEeJHxQ2x1Prz7xLwAIYUWkDjSbGuHSC2gktIUpNGlddG0Hsx
	Z/m/vXRezmzq32ffV1EtKvOx3Gm9FvHk7T24NdJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182117d7a72-faa5a917-c300-4f71-957c-99aa03ff609a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cbbc3083d926213d6fb1c3049b3526e7f6f1519f7b91fa39eb866ee00f26556
Date: Mon, 18 Jul 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658150812
