Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48477C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654585919;
	h=To:Subject:From:Message-Id:Date;
	bh=wlY4St1NDHKx55yvKswygRlYaFrG1xksqv3ZUR5KMdY=;
	b=QbRaKdSA2mqJv4PPpn9iN3KE2gKJ8FIPnI99d//RKtbeGb7ebxsvuiDViryN/WRk
	5KpAp2UlAF/CNskDIdior7goY7s0/qq1ed49z43Y/xUJd3Fib/ndy+eCvStaYGgpHzq
	4Tg5RTr0C9Q3Q7XwWIpQVHIwGjPvOaWw6oO6tpms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654585919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wlY4St1NDHKx55yvKswygRlYaFrG1xksqv3ZUR5KMdY=;
	b=goWtnjJLrxSucadupK1ivRL5E1zAPamrwJqriwlvcWY4TAtHV7t4a9n/CGZY5Yjp
	ua75gYZVw9vDyTxRgP82YqJDxGFZ9LGpgpZ0ZVbeNm5cBhEJT223frl+26O6YUnnU91
	lt6D3zf6cnmT1e1FxI5alTo+xwAHygyYr1/tcoVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d018774-622c2516-4ecb-4e58-bcb4-1e91daf1b64b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 887788aa834f1c586a36ce14b040b23ff8e3dc842ece9b77cb85b74be0c1e263
Date: Tue, 7 Jun 2022 07:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654585919
