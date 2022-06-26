Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A6C7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656276412;
	h=To:Subject:From:Message-Id:Date;
	bh=aLfMUEbPLR2bhYrHT2KrIlYXWo5l2kG4pJb5hs2VqSk=;
	b=Sf9ns1uQk9vhed+RSWnYMtj4vPBF9+28j6VIRlj4ZRS2P86dzgVp6xh/kOr6UYli
	vaAw1rDalUfgu+Vk1oeABcHUmdg8AoLgBNEMZc0o2M7Mxf3P93fp4LNH8IG7Fm6Hji2
	VWhVTkXgyU8P1cChbitlbv+i2W0jK7wNwrzn/EPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656276412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aLfMUEbPLR2bhYrHT2KrIlYXWo5l2kG4pJb5hs2VqSk=;
	b=irXlEcvoHZQtTY11fHFdQc97R/M2WdaLUtcLzXjrpVu3tGg83sizOUPCMPw9wkvE
	gNH4W6R+ODHvixkNBqytsvlPFW7ibDYbZ5SspJWrGdxRgP2J5PDQr0pjJlEzhPo33fF
	FHeJQ6R6SSEt2OikC/BhmFjbIOloX1hIoKEMEfnc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1c467cf-32f4c07c-f871-4f16-b697-311a7deda45a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20e8b9b03395b62d8188bc8519a3ef8f33afbac90a056faf07ec8884629dd6e1
Date: Sun, 26 Jun 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656276412
