Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E17361
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658104012;
	h=To:Subject:From:Message-Id:Date;
	bh=5w4Bytr6npzomDDEOQ7D/W0CIdbHxZ8CRSLvSQmRvuo=;
	b=iz3xwsV0wbSUIhw4tKZZfwahM5ZLmIAw8HwcUq4Kk36basJSDzD62CKr5qRw5egV
	bxYpvapwtwiZZSTwA9MH+7hvh67cyymPk6L4F4BRyuZ3lx9PVqm6wD0+ZSs1PGpoMTJ
	tAQMavYVnZfk3lguTqK2ibXwG9Mz9DBY3/hSgniI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658104012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5w4Bytr6npzomDDEOQ7D/W0CIdbHxZ8CRSLvSQmRvuo=;
	b=J0+jmAcXJSXGO9E0TK1VIEDIOOOH4k1Tvscs/P1SZPjqUI3q0HAmBpCNpMul2dtA
	UGcPXcn5fhzrD7c1JD9Quci/HquJP6ppojLmJsO8DSp9qLadzYQE/W3/JISPaPZARo0
	hGv/5sFSKBEkgebnedfh1JNBfx5XwolSRpKNYvX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820eb35e10-5f98827b-4cde-4b0a-9092-fd9a8f9bb9cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 078e3f6b35be4ea4bc284bbda0defdb8898bd03ced66d9f204cacb62ad3ea268
Date: Mon, 18 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658104012
