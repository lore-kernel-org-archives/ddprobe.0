Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E132186F
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647261984;
	h=To:Subject:From:Message-Id:Date;
	bh=517dlKnyjMWJsJf+2sFHAz3g4bsHgwRgg+Vx9lqHBCM=;
	b=b1MCc5cZAX0OxiiTmld5G1e+woWHo2MTJtMd6UovhSBs2KMwb3W8hQtlsOYyJ5Ms
	pLrdY1BF1XfkviDCXM9mbMmlTxtxkFIJylpH8AJDlMAGG/QSjpkXC93jLesjUnrXsE0
	58E1v7NWx9GQ95qz58fgnTtRVOBokJlo6g8Qe3Sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647261984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=517dlKnyjMWJsJf+2sFHAz3g4bsHgwRgg+Vx9lqHBCM=;
	b=Z/IazZrJmoXmv7bO8/mra+aferfjrBR7MPo/+KhbV0zmYmF/uqgnaIXjLcjCvbyC
	rL/uiDzAMDW4bqCvfCAtdFuT2vUU1fzdH/PMx+4VtOfiJihV4jjLdGQZgxvKeJlI+3H
	aJeE9a/Z8NVZgyknMEhrA1tkncXSVxdYKI7k9/Qg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f887727df-718044df-f3a7-48a2-9d11-585ef2fdbdd8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38e4e02b8648f77048e955f5acd7f61766a6de525297106a922508b81ba1b82a
Date: Mon, 14 Mar 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647261984
