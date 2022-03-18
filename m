Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886353D7B
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647588684;
	h=To:Subject:From:Message-Id:Date;
	bh=ZVQSb2n8EgsMHQGAanG/Y90zgUGrhhOBeXj0qv1ReQQ=;
	b=jQ+HrFiJU8zqpa5sCgBVki+jsGIZsBfXmHzD1bKY64GUD1XXm+TPMDLXrMAk4QtD
	7ko+qlXr8yKnBVFFUPsyBv+PCNqOkUS/KoGlaTPECunvmLPuXpQVuFCZGzchVZJhVbU
	Zqzpz2quSFLG7r585cljQfbIfazYzwlq09trm8gU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647588684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZVQSb2n8EgsMHQGAanG/Y90zgUGrhhOBeXj0qv1ReQQ=;
	b=EvTLAaM3yycANfmqEvEIOK2+zVCWNKBTWfjm+pg35xhFuRD0p1Ur12bzstfMJ0e5
	c64KjWkby9Qvma5TRfdSPxofjJU2oQDRQnT1wz+X5Ksb3zlR1erPUQmBnvPw0opXvLS
	ecjWbkWAoJfz5naDlCoT2JuuLGvtLz4rqSv6f0DM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bf033ce-59eb0473-b0a6-46d0-b0c8-7ba78461d39f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42463ab2a4f18b18dd0ad023247409d7e17c1f66c237fbf32b4cd202c17d0dcd
Date: Fri, 18 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647588684
