Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102EE3234
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 21:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653946979;
	h=To:Subject:From:Message-Id:Date;
	bh=Il9fWlbV4zoEZq3Y1E7TBcufpftCa//WWt7AW4GAaS4=;
	b=HQyTVc5k2H0fggjYI4+SXQmHIGpat4aDj4xTlIbyZEZL4elf2ObSXGM6l4jhSfiG
	VQNksnKdtqytda+8BSMGxc1aaOtccJpabQNwveCkNa+OCv5siJCP1YcakRqtxBfeG6F
	ZVpDBjgXbDsKgNuUvA/AAi7BiayOPyvLu+ZcUCHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653946979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Il9fWlbV4zoEZq3Y1E7TBcufpftCa//WWt7AW4GAaS4=;
	b=Lf68GDySrTJRUV3F0bZarLlQlyZCahAmXZHjG7WDZJwRBDTeiaKK+0kMjMFiS1QO
	W21fOzNycePEHkvcCEVCD1gswv8hgwq7bojRATg7/L6+S+tCywuSXtGtiB0X27NhfDo
	zJNzfY83ijxtO18QB7YxCy0MyICHcuseOr6D7Vr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018116ec13fe-45271628-2c8f-4c29-b775-13d9e352b4ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1d38cbdd1c0b0b8160b2a7d26c447da1434437c215735b4e58b192a17985beb
Date: Mon, 30 May 2022 21:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653946979
