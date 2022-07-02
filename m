Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DC83C02
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656766012;
	h=To:Subject:From:Message-Id:Date;
	bh=T64VCQA2h0/jN36ZmBl4L9r1fzc/TaiqMlXAcrbUSV0=;
	b=RwXlCMb/T12Xdyn/tB6j00osD9agePEi76l4WaOs8KwUd5dapMH0jIBYTxUeTQKx
	GcD2wemUXcVxLkFz/S+KSOLcKzOBTaRO2RwIM3NpxNLUB9FG7+FjHMamgrc3USn6uLt
	EkZUj9x4kKF+BYqJE9IsfRstSKI/rH9NB7atec+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656766012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T64VCQA2h0/jN36ZmBl4L9r1fzc/TaiqMlXAcrbUSV0=;
	b=EIFdJtTijozOxlQ7QpxQFpPH0Mf1Kv2E+q6N9Hjq4YrsTu9QkBgN6iY6VAgNwnuH
	dwy2CgXJ7xK3f4GAHdphZsg3C5UwvcE60QQyPsPQlTp/CF3/Cj1gGzY3cSS4CNKmAEw
	Sovzdx1Ty9mhfE+1FUO5g6RQFS4k7hO0yw2WWwlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bef31b84-76c6081a-fd08-4132-9662-50ed585fa6dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95d5b4ea4296917933d66f8ac201d19947c46adc90515a3f93d7e442a866e4a2
Date: Sat, 2 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656766012
