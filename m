Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA6428E1
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657705612;
	h=To:Subject:From:Message-Id:Date;
	bh=f3UWJRL9zEF9qSSf56BP6GFsRoxM/EVcQd+3b6FqjOU=;
	b=eZ7XyrH5mcESSMfQ0aZTNERiQvogggS4huJq+ZLJ270Uy3qGhUo3ZuP/vqnx930X
	tZv9tYzskUKDW5SJPA35Zaag/vL/FE0sf28eg6mV0uVO1wlUh3BwvJvn3HaASRQb6Yh
	UO/k7KZm54rZrvZTdg+9Xqjb8LLuJ17gD80QVcXY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657705612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f3UWJRL9zEF9qSSf56BP6GFsRoxM/EVcQd+3b6FqjOU=;
	b=FZlxYCFl49WMvyJRWaZr0EkdK938ogN2qJe7KMst64jX6KmZVJVx1FpjQTT5kG18
	d80sB1+lDvgNUuYsvdm7v+Vo3PiFytjcnlp9k04aVEbPLatKxKdrQcH2ajQKz0wZK0j
	3Vwxi6KC/qmSFsdD1/Xfo9D3mIRCqoC5OdEz2s7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6f4442f-5c3b10b5-86e6-49a6-a049-9a22f705d0ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e4a0df577c7f7fe9c9f58737a29eb738457bad982eb9b2be4bf1e9d9946dff
Date: Wed, 13 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657705612
