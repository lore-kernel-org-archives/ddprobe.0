Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F93C22
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657720012;
	h=To:Subject:From:Message-Id:Date;
	bh=SqdFCZ9uM6HqwXtUm4YV6Pk4DSbJQeSlZP7Scvlhc1s=;
	b=FRzYtJxxeIAIoAQ5t4NZ0SBqeOA/BU7S8UooR6o7XIdey40tfEHa4VMcMeQp1dxH
	B6U791v6ADp9hUIMdhdmJb3aYcnurS53cWTZCyjNKGkWnFFUP/X97o0rnkPD1uS8ybB
	VCKRH2CuDFtFfRuwolbs5nr+5gg2uVnNcFnDk9nE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657720012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SqdFCZ9uM6HqwXtUm4YV6Pk4DSbJQeSlZP7Scvlhc1s=;
	b=V3clgoGQKqSZV0UJbyYn0Nz3ExpQSbpvLpf0uaIQe7LgS7pFU7qrJCwyCfnJ11cw
	NkFIbBucv24/eOtAkAcZF83eA44Z/i783TgvdMsSKakG3Mlxifl9EPsm9uixidyaSK/
	jYyXk7NOlehysv2JPadPj/X3iLK88czqoqBJMCEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f7cffe20-c8e71f29-af4d-4912-9859-1e051e94d6b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3596293298b252ef688f492df78eb3010864be6119f67c5f199600b6c153a827
Date: Wed, 13 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657720012
