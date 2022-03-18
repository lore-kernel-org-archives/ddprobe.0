Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6524C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647623185;
	h=To:Subject:From:Message-Id:Date;
	bh=M58ExVBY/cNcJaXR79NUHBJRSTxjHtAFs3UYVdaGm1I=;
	b=OYIqULqRhv+MvPrjrWqqMT4au0mxGdHVBJIT63jT7fn9AhNJbQC8jqCRNW0+QVqX
	VmGZYk1YE16xzVoe8QnM0uEYeJj9j53OA5nEYFquzZPFszNMQQVootacVZ/XG+YO6ov
	UByfBAC2VX33j+R5FgT5TOEJRoUSxgZ7uoNfcijc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647623185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M58ExVBY/cNcJaXR79NUHBJRSTxjHtAFs3UYVdaGm1I=;
	b=YMCyVM9LTIXKoSRAOl8xFPiAqZu5AWef3cq+JMUzFGJGPUgUCUafovNxJWaFIphr
	ivFTZyvmfv8mcXCs2lRAHv0fwWWDOJdPp8+XF0+bngb4B7IbXl3A8uIx7eu7Jws7Mz5
	q0WWWYWWFtnPi8hbH8AnU+At3awpu/g8tHTB+DeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dfea16e-7ffe2050-af39-46bb-bd68-9baf6581c2d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 965b2f7a9a2e2411c76661f272b054a481203355207980d6e3ab24a5cdc703d4
Date: Fri, 18 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647623184
