Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DDC652
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 05:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651035898;
	h=To:Subject:From:Message-Id:Date;
	bh=WmvnoXZ2zLcIEaqbY5HsRPy+ASCWEorrsqLI68htAjo=;
	b=UOlT9BEVeMLoOGAsQR/c6dyqmOiJFtSJXM8a7MqnkaXoQ13+pKBuqwsLY9pdgikN
	hgOusVnwEv431PmFvhAFiIHqEdJ/Dkk9JMHgZ6OT4vWtV2r3l3oqqrobua9j74CL5Ce
	M4WDv1wek8pxZhfTpx9QJyuCMSWSgD0gKtn8h9D0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651035898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmvnoXZ2zLcIEaqbY5HsRPy+ASCWEorrsqLI68htAjo=;
	b=aHjvZIiGgVfKoJrG0kKkQ0f3Q95ts7JPyEFYMoMDAhJQlbjSBTW1du3rw86q5RW4
	Gpluqg9tXsASa2VkcZJT8CEIaHFfyZUNpqFbviHCxkC8V7LYP6AFT5FZvbOWv/tDR/h
	VedioH6ZVOOYOO5MbU/wb/O8lzm/lDo/l4UvwBHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180696881aa-37b5144d-27b9-4715-8d2b-fc91c18cce5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50f253ffadc24bc20fcaef22de2f31f9f799c9523c0108336ea0ea1cf83ffc56
Date: Wed, 27 Apr 2022 05:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651035898
