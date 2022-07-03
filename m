Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE321FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656836812;
	h=To:Subject:From:Message-Id:Date;
	bh=jyHBLIT6N7CbMpCCCcqMaSVmZrg0EuzpCr4D+l7sTps=;
	b=JHvLICfv3PNw5rZExErxrISuSsHMt5GLKvJXYsmbjhCP9aQMnktxzUvqjMz6l3fB
	OvD+/E8bzw4G5+O4dZWQWsYv0ZuOvt3VQhWuhIezVWPddNHvaZAqTMjK7P0HzbvyEtV
	BJTSCzljNtOkUlrZs8K8+DbFuEwWN/cFNAFk0kR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656836812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jyHBLIT6N7CbMpCCCcqMaSVmZrg0EuzpCr4D+l7sTps=;
	b=iVpCRCbBgosBkDDpPwLmBN44EJ3y1h0AzD9e78MfnJqFpH/e3a0BYu5LCF6nRdW3
	0hwlFhJyyAGNH9NSOR8lqM5Vuh3lsIFjcIlNs2hkgZws7datVrlLeJ4WlzualQGpdS/
	Kn8Ste4sgnEz+HLyJ+9Kc4J9TxA9hz+oChaFXfao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c32b6e6b-6c18064b-2f21-4a39-9db9-a377cf6e4e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07b8adbf19d62634c2fab923698bddd83652a3d3495bcc76fad605fd3c4ebf4c
Date: Sun, 3 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656836812
