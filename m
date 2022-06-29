Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A06AD7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656541012;
	h=To:Subject:From:Message-Id:Date;
	bh=8AZJa3k5d97FA5hcZfWvEB4PDoOjI84EO99AYRsdRLg=;
	b=ENwABZLy+JpNP4MoDcKm3J2asFqAI8PDA2qc4UR8QHMR5XPYcA/OtYca6g4BcjfS
	PTsf3oSM7Uu/CWpZFeYG/rCYOs85LnwFPi+cTTs0PLqw5T01v4rwCPQ5bK9Df7CXNkz
	5BUhvgA4Z/TavbHNl4vBgrLZg7SX3m9QtXzzOU0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656541012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8AZJa3k5d97FA5hcZfWvEB4PDoOjI84EO99AYRsdRLg=;
	b=dYqdZmXGjwUV6F0y7IbbTl/4P3Jp20LBwPmJ/Zlv2JNm3JI6uhRbislMkGSlI0BY
	k2OmxVCEIjPZyI0dN7Hy8K0xRueXeJ/JXNZULAo1TVsU+v5fmlTBBJTLw+Wk7EUxWAW
	Vb38r3nulouvYBsFhs0E3XWtLOdjXw7BCBflU1Dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b189e15f-fa2fa4bc-41cb-4cee-a305-ba91c7b57112-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa8f69be4b137412ed3b251f2ec46a309ba2eeb050cbbb2dc571feccd207b7a
Date: Wed, 29 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656541012
