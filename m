Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695924A01
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660083652;
	h=To:Subject:From:Message-Id:Date;
	bh=0F6ODaoEUXSvU6MZvKk5KRoYw2Zl/LaLCE4PSsdb5M8=;
	b=OQAkgCdwUkiTS2TjUcKBFugB8gTkG8uo7cQVhGTpK7YhqOPvihrnHzvM7L85rJic
	zmVdendaQniEiMLA+ehv6xoYdK0piHMNcbi2SF9/NvmOIcUkgcJezf8a2pRAJHB+ad3
	k8qbmm2K0C9ImQGbB5q6oRsQrkNRwp4/m/ue2Rps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660083652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0F6ODaoEUXSvU6MZvKk5KRoYw2Zl/LaLCE4PSsdb5M8=;
	b=UtlhJpCsw8b2Bv9s4xR/R7k5hD4SupbKMtjtsmBhHO2llyKcYabp+WuGUJZ2eUuH
	RtKqrHjs+0+JL7wg1s8ZO8pCUDds3uEmbxSdHdL78CMNjcngFXyXBvbjSUSSpjnUftS
	QLm65JPi7ft67NLbhUSKFpliRr0cQ2ZXqrIlAyBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284b24819-64c91da0-e518-4410-96b1-fa456bec8269-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 278da471a39f98b1c6c3e1e834307cc9a001d4f3dfc7c0c667386a0023fdc48f
Date: Tue, 9 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660083652
