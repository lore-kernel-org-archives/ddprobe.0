Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCC162A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 01:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651801978;
	h=To:Subject:From:Message-Id:Date;
	bh=mzwenBBVGih9hTfsxjmbvjvoTZBJ5EyuM6+JYTE6qyk=;
	b=cSTO6TRQVQQELEGZRfLHed/B7viTygl7unr/07M8W37EbXEjMhD+pds3pxxZwvaw
	pYKtMm2wB2HPGzfa2a3v9aGZH8z/Cln0eAgT81wwoBWabQXkZt/yR7Sg6ld8cHCQwHN
	JwRIFEBpZGbuW4b3m/8Kj2qJn/x8VxX7ACiEKLrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651801978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mzwenBBVGih9hTfsxjmbvjvoTZBJ5EyuM6+JYTE6qyk=;
	b=Im+cNf5X2iau9qrscv+vMDM50+ge2NQq7xThEtkmt641xuqrq5nItaUmgJFnerYn
	pMWLggYUkRp+tFWUTyUBKK/JtdD0kE66CPR6WENVBTjRwgY/CPW1zIF1RJem8M4pa78
	l5Esv0Juu5vrkhqGBKCWLJunuBC9thDZbVdK0bzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809711f5d9-06a3e118-e058-43de-a7c5-75d261197ab5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b6d6ef4e01026b9b4c58dbcbc4286b2634cc98926f81c98a66408ca0973397
Date: Fri, 6 May 2022 01:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651801978
