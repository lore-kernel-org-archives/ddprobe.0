Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02609A50
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647981085;
	h=To:Subject:From:Message-Id:Date;
	bh=sShVDEMXAfTXBhgNSc+j/ke0PtPs/dfQhVTUMvv2kE4=;
	b=Yz2u8l5eA3gO0zNb4hUrGRI5obYLWe/T5BbDHXxLu+0oiKps3YVhkrPtKz2BS9Nw
	GdKCPbiaKUMeSwiGiqYkZf+3iGF9uAnZveGYZrHre1uYn5M4A+WhtKmN76GBLHehuu2
	uAEZ4s5adk+snVkO71p635X49F3jkQPpnyojjsMM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647981085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sShVDEMXAfTXBhgNSc+j/ke0PtPs/dfQhVTUMvv2kE4=;
	b=HuW4bMkxCbkruh0DZkh9ZLcJ/lQE7S0k50Q7zWQtj6WaiDeklvAKLk1D0tFrJhjU
	Pdb3O8heOVx8RNCrLzoC4QMMCHc9VYGvDK5sDn5J5qVQVSbB6jAuKLNMF99Y46qCpxr
	5nDLludXDgxMK1oHBl0imvxcmgt569ldBMuHYP7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb353c034-61cf0286-9caa-4838-ade7-9e20e73e6eae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d53fc78d44bcfddc33375ae401d10e6177b6e02cf6254eac0c844cd104193121
Date: Tue, 22 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647981084
