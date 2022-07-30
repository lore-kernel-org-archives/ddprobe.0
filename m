Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ADB187F
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659156652;
	h=To:Subject:From:Message-Id:Date;
	bh=YdsagWL+rhOZprAeccY1+S8Vrck8Ayw+v4yUNYCn6CY=;
	b=U8L4djqhGseFhfpgvkf1x2uZjRXpfntj5K19eep+CzjdTpzLbMNPvqHC5c4clx+z
	VkQCsm9y9gBuPJF719IrjMvC1T0irX+G09vnmMPgvwEeJf3job8Phn9qYCOAbhj+GMs
	jXJozsFpEG5W4SP7uy/DTCazpgQA2kHnyaKyCU5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659156652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdsagWL+rhOZprAeccY1+S8Vrck8Ayw+v4yUNYCn6CY=;
	b=b2yPlAhgl1t57+GN1qgLP6aCrvOxJT5KArm+ELDYm/h8+UU3eA6JuNTgdHIwgUdO
	e9BD1GdLNi7nn75hLnnQ7oq2nfB8Czp0ajidh1zHbq7lSxdMOGFVFIRaMtj8GoaNGiF
	Vn61YNJAZ00fRs+BkEb2u/pvG2tDpYjgXsmaDgJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d716215-a5ebafa5-6964-4944-b1c7-9de3a83770ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 981ece0620cffa0d16123c374cc6b7bae2fd55bb146d692f24ca045cd3ed6413
Date: Sat, 30 Jul 2022 04:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659156652
