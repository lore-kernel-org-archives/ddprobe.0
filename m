Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C66211F
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 11:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653218939;
	h=To:Subject:From:Message-Id:Date;
	bh=GlPqj37XLVosUoxl0DUXIzXC+TaAQ6pMlczRezHBsJA=;
	b=kjRcizbTzaAcE70kxX+SvhTklM22pPkXwY96ddHeIw35h7XQa+YIHVH/bxHKdPCK
	I4masICDvKvg8rcIzCotPUgvVa/E5afIWZZZlaN8iHuk6YtZvw4tj7nCcJJVfCfrLrG
	BLmzyMhHFkOtkMJWcl47COU8fbBawU0TVhFz1O0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653218939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GlPqj37XLVosUoxl0DUXIzXC+TaAQ6pMlczRezHBsJA=;
	b=Qrm0jDLEPHETdfjceOoq2oC/OKaLdcFgUKrmo06lQKjcGYkbfxhHt8Ffn8HJ/gBu
	skXGaH1L1ZSJCEmnPWFohuVR///gIlt80HlWc+HnqnGDA4n5oupHJbccxya6F6T66RV
	HvPGzhcWHVOi605LY3PjoQeB6u6cE6cxuxenPAUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb871166-57290dc6-a2fa-4e16-b2e9-0624583464d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 647b23da5853109e964f6831b86efa77d597dd0876129e8e1c099df36e208cac
Date: Sun, 22 May 2022 11:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653218939
