Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158CF2F53
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 22:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652135519;
	h=To:Subject:From:Message-Id:Date;
	bh=dEMJIdeny/evVwntXjwpJuHjfCtDRaiWiWgG3SFrTI0=;
	b=bktAEIaWwQv9MzpUzwcwGASKUUcWZGDCtRRxiYRX8IwGGQKPW1p8EwsA74zdgbiP
	w9nFWf4gbLMRVFc+rAqA7eqVniXXcjMPDIMQazB1uQ1JmK/tBH1kthn0KgHFzrh6tA1
	JMbiiEog6a5bYlTX1+Wb9BCRBeaAYSOgBsalEQOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652135519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dEMJIdeny/evVwntXjwpJuHjfCtDRaiWiWgG3SFrTI0=;
	b=XjBA26C40LSZaC4cvUb7WedB9GGboZE4w9RRWSKvORSvukDLPEDijvxsqRqmelC1
	6oI6Cbf0xjVelg/+T0wnpHypO4WlflmQt550aJ6eDng8ok0Xjui2BZJjqXEx0alZJea
	9r73HLgckDPO4JEK4KQHGe9GiG4tkNbdfL0ZhhWs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aaf36420-962c5dde-d727-4d18-a7a0-39bce79f2946-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d477e7ebf55e05a5121b4c39f12c40a4d05a6d850acb101506e1affc8c13092b
Date: Mon, 9 May 2022 22:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652135519
