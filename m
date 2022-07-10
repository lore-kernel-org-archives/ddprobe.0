Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0B410EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657425412;
	h=To:Subject:From:Message-Id:Date;
	bh=JQNJ7owBbRbvba+Psa893JGtuIpTxYldFN8/Gwzh5w8=;
	b=g7bilzQDwncWHrE3Giy1Ny5CQFK1TXdif4gvfVzcGg0DRigBcS3jxOKehR8hcq0m
	5K9B2bH+71Du5zN1jXwi/gzNDqMtBYQumMwns7Abfnk+OVQlZxDKng/U+dMQb+vsQYs
	A/qih6bQ4cd5/u7iqDDvZuYTeRBi7MkWU8jNIKL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657425412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQNJ7owBbRbvba+Psa893JGtuIpTxYldFN8/Gwzh5w8=;
	b=Woh8YlAkt1PpqSz5R0tC+4qMImVEaQ8CQcDCAoLgIomkdAUcjgPb6/3aoOKrgcli
	+KUsEMxojcX+EqolyeoqtOVkodFb2BCaim8KWx/m1dFqc73XIK9v57YQSPtaxBwoQTV
	I8IlgQ3Kj54LIr0FZnmtTCY6l0UAJt0bKSMtU0hU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e640c0bd-ce4fdf26-2e5a-4039-80a6-8d85d216576c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12c006d050690abdf92e02d6ffb6916f9691351b62b9ec52827098bd02e2de30
Date: Sun, 10 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657425412
