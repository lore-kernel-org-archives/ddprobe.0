Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE82817C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653038159;
	h=To:Subject:From:Message-Id:Date;
	bh=sReSI2KxzMaLFK1FelMNiGB0MTQMvq8O0J3WR9wIRH8=;
	b=BfM3dDn1L0wWk4ffn/QQkBhRzXzzMkUF/rcjk+LBlKGtxuw0tNDxZHg0gij35pN/
	8tq8/rlLAgIZ0DPxD4XmiWBECYwo5f0jnFW/qJUKbt8VF09M1jd4JyDp0ZtaAi63avr
	wTNmk04v4MY0Wjf61pMVzSja5E27F56AclKmRqlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653038159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sReSI2KxzMaLFK1FelMNiGB0MTQMvq8O0J3WR9wIRH8=;
	b=Lu45cbfoOD9x8g81RDto4RcPfjvVBS4VT8qfVMbb/t9HfQVoA2kg78EgNGzFRMp4
	jaop3QnCc6MNH4jECik/y6N7c2U047AYzo9F0qU8w4RMW3//uKlJ2CYXXEiPwUTg0dl
	5CKOzCPGZo8G9BU/O8aFY++O17zBiwKSXF+vblDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0c0957a-b51c029d-94e8-4b80-a37b-1cf7ffde28b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cd675ff0b8d9215f4cf12ac14d5e952787e96be2114425047119be15b5feae0
Date: Fri, 20 May 2022 09:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653038159
