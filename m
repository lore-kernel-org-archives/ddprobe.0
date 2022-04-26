Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CAA7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 05:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650952798;
	h=To:Subject:From:Message-Id:Date;
	bh=QwVKllhAA2k2ZqLpB8/sgYjGN6xAypfhctliPP+rW7A=;
	b=Cp3s+86hTgAChZQrdFjPI+8Ry6rddfA+Gc73TP8EQA5P9CMVm9lNwiXzVFlngQmj
	JP1dijvmk2BedwRN68n+mqev9mQ3KGa9F4p/gn/6zaSYeqbbuKypRtbNqzHa4k+08bw
	o8aWvYvnMGVmH+Mqbk9s7reJDjcB6IOITLKpyj+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650952798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QwVKllhAA2k2ZqLpB8/sgYjGN6xAypfhctliPP+rW7A=;
	b=GiojXNgXwRzRaqBIpXEqLZoowf2r1l9+WW8gTd9kIMfkwCP4xbymsrv+qYs2L8aM
	0vKWMVD7YKxiLwNFr/Ujtty2HLIwEa+sbPTGB9OH6D6Jgw2f9XExDLOMkDxQ1cYDNNN
	wzb/iTo77vPthJhohlpCU41A+LhvQoO76dsspex8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806474802b-62b73711-4cf9-43ca-b2a4-100675e2c8dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 880a206e3317e82612f7297a80375c83f6bb7515a82762a4a402af10e13ad186
Date: Tue, 26 Apr 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650952798
