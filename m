Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594063D65
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 23:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654297619;
	h=To:Subject:From:Message-Id:Date;
	bh=BRDx0R7tJuKK1/xqajgFp/ayqk7LfaaUbjb+GKaAL68=;
	b=Pxii9pNwQr+k4cclF+cV63Qd0n3V/+TbzHuxYIX+N1TiqqkCn0cixpp5R/p4im54
	HYMEbE4oy9MUNHldQFUXoxomErJ+4QiCZq61blIR9AtMryUwDlkiKhNHfrfi1UhsI6Y
	7MWSz3z7WqNMn7aShPYJf3jd+t0sSaI48RnPhBXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654297619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BRDx0R7tJuKK1/xqajgFp/ayqk7LfaaUbjb+GKaAL68=;
	b=b2JhDxHUbOsl3NhVszZkmLS+jT+dZcSNGCHApOcfBX5SE1X8YJDgMqXHn3pPdqJA
	Y6cpHqKuEOnrFLUC+zBaRwMooIzyuQb2SEQ8PCkuHigUO7wqBjJubXe1lLLKwzxYJsx
	APrnlE3/doXwTrF/balEXtfjNAMSOQyqIr+JlNSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812bd26b4e-e8eded25-6d7e-4c6b-b3a7-4d6e71b4b840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab46a93d70fbb46fd066fbf886bb0456c0db38d063ba602bb793885f9e6755a7
Date: Fri, 3 Jun 2022 23:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654297619
