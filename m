Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041197E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658613412;
	h=To:Subject:From:Message-Id:Date;
	bh=kjMhe0UU5xEcNd6B3Zg2AgSH+BTudk4CbcPNRa585bs=;
	b=hMZI3oE+QGoLc0sd1acuQl4Wym95DhrphSQjf8sUTfyv+dRjWMa+zM+47g6+weOM
	6RtvGnmfv1SsKJ64oE5jqyNhfhAcJN5UD8WfwBP71DjAcg5YUQWogu7gPmwOqsWYX9N
	jvuzmI5ZcxFSJVAEHTylhuTyXC1MT+a8vUIYCXvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658613412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kjMhe0UU5xEcNd6B3Zg2AgSH+BTudk4CbcPNRa585bs=;
	b=J0/XwAh3uQkT2c23puKVIw+tgH2l/aBtFeX6z4e15NQyYm7Lhm6iXhm+xuPsSyaK
	Tw4NxNuc42ekhO8L1o69/uWEvTurJ2USGRZ+lLbr5De9H2la8CVvD7xdtYc8yduNWDO
	BDaeCdWmEo3nUOGAGkXrUTvjZz7uM1s921LZi9gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d1031d5-9ed79904-29c1-4ddd-b6aa-54766c43dc76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29c00307b0810c2bbf8574be4916c94290ee554a82b666da956721b9844012aa
Date: Sat, 23 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658613412
