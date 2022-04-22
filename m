Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F28E7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 13:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650634738;
	h=To:Subject:From:Message-Id:Date;
	bh=4ANkGk3LFRFHom3mbI0UTre28VYSw3IYW6s48bHv1zQ=;
	b=T8I/sjkSXi1oS5a+HWW3I2r0AAmEWyhE5aj04n15VREs/sjHjPt+3RH1aYNmAjcQ
	glAt1wlvdMjPF+AaIE77RiWzTOFqdfNGVH+V+sp6SM5JUsinL7QTsTzn9MLPoKfwI5i
	US/qF4iv9y0uphyODukjc86YTcFA1wF9vixqIX9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650634738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ANkGk3LFRFHom3mbI0UTre28VYSw3IYW6s48bHv1zQ=;
	b=HqzrWamKmcd823o6hYf2HwntQPYemjnLrW5Elerf3wiKS+ZuqHjUonUhGsyRGGgp
	alBBS/mkDM2xBin/7ZFFmcLK4PdW61CwWCsqR2pg48PEXLQxdW9s18VIB06Ul+RSniM
	FkxYqJS0u2k/lRaDw9yVqJoOe/q9nPhZ5Dju18cM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180517f4a74-edf658f9-b2a1-47c7-a1cf-adf0564d3e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1ad0fe3fa779c7c831ce828a23fa453fdf6e19d4a9b7577712da010252bbfc4
Date: Fri, 22 Apr 2022 13:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650634738
