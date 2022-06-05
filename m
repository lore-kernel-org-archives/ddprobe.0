Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7BA1FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 21:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654466399;
	h=To:Subject:From:Message-Id:Date;
	bh=xsvsLcR8T/UwBssgJT9S3hVWfwgfaK4/+8aNXzyiBoA=;
	b=VxCf52hGCqwwlDRxPN2mj5+0glPLqvAsaskFcuOX5b/1tMFjOwKKsxZeBrfaiJys
	a7wg4Mz77JMhyEgCZItMZbUeRp64M1ydWRMddIMlXbPxVpOcU2N27IbomWqEqXb2ahZ
	T52y25J/iHfC/sPdMtUJTjnhy/eOsdNFg0zsv2Xk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654466399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xsvsLcR8T/UwBssgJT9S3hVWfwgfaK4/+8aNXzyiBoA=;
	b=jiBc7ODqIz88UtrLZULuWhKVM/h7SR0Kkfrk3nk8MBLmIFA9wl9+JeZPcPH+Zh+b
	rQjOnlJyr61vkcEtFZb6N8fZxO6+Qv1rWwqsHVWXQDh7goazol8Ma+6EjBnwZI27gK8
	Un+Tsr/BUkox9FaF6iwpCnr1TdX8nMmax5S3cpqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135e1cc21-ebfdd899-f5b5-4d94-bc13-c7d1b45eb133-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc7657fe09e9e5b1ee8e042228a20859064eb5c0e9966d4ee7917ff5738ba3de
Date: Sun, 5 Jun 2022 21:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654466399
