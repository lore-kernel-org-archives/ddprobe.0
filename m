Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D88163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647702685;
	h=To:Subject:From:Message-Id:Date;
	bh=3yHkvO9kVSCJ0FYB7M77GINbRaMmariDccuC0Ksf/3Y=;
	b=OOUAnvVaUQIDN21A3g1f9tQHmX+im9GMHC5KdSUzQaRFSsnvIA4duezI/v3VkAuQ
	OaIKanq6wtX9JkaKGPXmqCuZnLbfeukgOtKTBU97rya62hF/RnrE01CmvY7llVKubRK
	T7jspt6cz8Vt7I/IdTC/i8ts8iNTf/R1JnUhM/a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647702685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3yHkvO9kVSCJ0FYB7M77GINbRaMmariDccuC0Ksf/3Y=;
	b=kABwVQHwaPGb+TJNV0IPjznq9VFXvzdB6pOMJy5bwcPd/bR1c6RvcwZZb3SFO/vy
	vmVABrvAWsHt2EXcXRTb7mEwiwPkRmr+2UffR82sYOhcjHS5h2u9gBDB+9xvzHxpOlv
	VqKfprQ6RNSaeicQYz8JGdZrtxLQu8Kr3WGDKFyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2bbb4f4-58c9797c-b0f1-41e4-a01b-657337d5b579-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393f38de8808c013ef41459c0f4ccd2061c9fe42f9fbef8343a41357a1ad4009
Date: Sat, 19 Mar 2022 15:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647702684
