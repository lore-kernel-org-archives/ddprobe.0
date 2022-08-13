Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4FD363
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660358452;
	h=To:Subject:From:Message-Id:Date;
	bh=g/sGRD4lQvErJLmp3GFTQQYD3aIYW+QCr6RogcxirlE=;
	b=MOSG08tdBE84VYcckd/obBAl5sFWxF+siLr7BL8rHCLqvZG/0bIh3VUuI1zuFdiD
	GlrSewXnugSH1BgDGpmWcNkzOvIRMP5BwtheKOIuB+da1ZrRlzKYhhLcBa+XE/kGdEA
	3KSBj7dAqt/REqiZ033fjvzQqaJryyD7ET0roJ+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660358452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g/sGRD4lQvErJLmp3GFTQQYD3aIYW+QCr6RogcxirlE=;
	b=JCfJz436X4EBSi9ikf3XWynCDYZeyCKBDjJbIjMgWwia60N84AjDutW5WmboX0fP
	xD18tbvOsKA7GPqgXTOQGZ7GHXKwGxZe03oHVmeUQCzkrFm2HT1s3F1sjv2wAvvwKQL
	r0sPckkZWI68C1rkoapKf0i6jog79jxofskTWQP4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829513652b-ae681928-7db6-4d1a-a7e3-1ea2ccad0e44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b78393e4f7a38f77d344c93b88173b6625c562900e54be4a7085033a373c3e9
Date: Sat, 13 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660358452
