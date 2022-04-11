Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9B01363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 10:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649671318;
	h=To:Subject:From:Message-Id:Date;
	bh=7fcbPzDGhCPhs/AB2VX968UfxXMBBktUmEgdg8h2n4Y=;
	b=ckFlFpos+ftcSxZEwUfyURXzRHEIozOibF1CQTAgPAgNEhyjnUwt42GTie1d+s/R
	HqbTtAY1LOvgUhDerXJ1r1rKHffv2OfgUtPrOaAVcZbs3u8wPdn8Tg+JDhpJtB6POsX
	LUCdoYVU2z6OL+MPqnQuWuJdQnLxfdphyh8guGME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649671318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7fcbPzDGhCPhs/AB2VX968UfxXMBBktUmEgdg8h2n4Y=;
	b=Ck0184vsChqKm7cVKZK7MPOJne2PVzBhhJcfaBqRG8W2g0ZmwGLnUHIYCZ50Iii6
	CXsNS+ObCvnzXSP61M7cwW/enUQXq+Cm1j5cVX5BT3fykoVzzTx8RS7g7E6XDC3K2CI
	cLRfA2YAJ0YfbNHZ1+3E6HLVEKYp5C12xi7BK0PE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801812ab04-59939c08-9d0a-46d6-95b8-17b193533bfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 142499533e5ad5c1e0c79becaa42d225ba0d399fea9b61acacd56da9e14ffd04
Date: Mon, 11 Apr 2022 10:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649671318
