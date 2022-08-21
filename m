Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB701377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661086852;
	h=To:Subject:From:Message-Id:Date;
	bh=GaGILxxfkN2s7HMWIJoFLghzjnDg8q48VDKKytv+mWE=;
	b=PgZkkhiHzZDrbf6lYTAR6B7LnelrtDlJsApFGpMZw9YpRDXUrTcYeSZ637w9Ce1Y
	tlWceZoGhVv3cA+XMwFBvs7WBrX7OQUgMGxT9tXnt2tDljtK22FEM84XvnF3PYKAUbT
	yuSq9FQPkNW/gfFAOT6yabXo7vX8VlSrDEZhOVh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661086852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GaGILxxfkN2s7HMWIJoFLghzjnDg8q48VDKKytv+mWE=;
	b=FDH2VzLWI6e1D2K5SXPz2hr/H4yjZSvXTQlDsK3swRT0joVu5SVWhH1WoB4gsvdW
	njh3+Kc7o3Auh0E4ndKtMXssCKQfoG+KD6Y0qeRKuSnQx+BRbY6xfIMoMWX+LHA6RQN
	ViXO7J+Y8uHQ9ff/q/iPoubW3s33nssx9DTTfV1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c07de5f3-d9edc399-12bf-4952-859f-d26c44dfa3b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28563e80b7782a76a5e77002c1c77180882adfaa1c8a1759e49ff999f4a1664f
Date: Sun, 21 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661086852
