Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4413B56
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647466885;
	h=To:Subject:From:Message-Id:Date;
	bh=aMGyoGvuesdzyDLFXaN0ptXTNLQ+lAVAM+ZgSxY3i7k=;
	b=B1V/c77KRhtRVB7QAJx1uQcDpMKZrrSp0ddUFvB7K01SfKsBHHKkVr41nc+nkif5
	kXj7apvbmd0WtcZD3DUAQFvhfhS3Gl0oCTtQroYK/WFIXmcOQA8vHw7ztTWwJMtw0wU
	H0vqFOzeHdfBl1iwb/qk16nmVbIidUuMnW7M4Ea0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647466885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aMGyoGvuesdzyDLFXaN0ptXTNLQ+lAVAM+ZgSxY3i7k=;
	b=H2IEjb6b99jTstBYH7jpt4Skl0l3PSpkEreTyuNU+EvVDJfKT6c9W1jhe64C5Dnv
	OjfkpBxz7BHYjGG8yC/FTQ9Z4HuvZdFrResCxDu/5A43NrbpvLWQThErjBQTiZH73Nr
	ZZsxWNzCJhND37rflRkeSh9Rv6XXuvgFtCWtf5p4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94adaf23-aa7f1c80-b983-4131-bbe6-19161197cc0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edf84256cc31827804679c1131af7e2fa0322a8e77989b999963dd601472a6f2
Date: Wed, 16 Mar 2022 21:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647466884
