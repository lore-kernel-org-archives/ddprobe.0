Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F287E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 16:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658592412;
	h=To:Subject:From:Message-Id:Date;
	bh=1YbM77u1B4IhpoEo5qqFyYDvtSQ/t0bIRMaYd9v2gwI=;
	b=O2kNcVWvNePhxfy4UTFZ9dFpDpw3X9d3C5J2k31ZMQ0L/7UZaOi2VCTBxYFdmPSm
	h1zDEMk6f9loty0hX6L4aFFKIM1ljBp8Ga24gDdetyMMnS8DI7N1yEXstvRPBxe0mZL
	ftyNAkJEzgcZmuYr4Ob0lnhRLGK4KVnyoflaPQqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658592412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1YbM77u1B4IhpoEo5qqFyYDvtSQ/t0bIRMaYd9v2gwI=;
	b=Sq6JxwKIwVLhLgKEMwSvz1Daw0djLA3kRBI4GurQUXG2Y6HIkRsDHsdIp8DOz5sk
	8syPzAc1HlOhpg4DeECoYTeEZssLH/FVs+59ot/kqsFYo9ocgQ1ibljh8uAqaX0ZUwt
	KeCQ9FgKTJlDFsp/moC8ytT22pHYKFmSZyGAZhPo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822bcfc262-cc2059b9-8d04-4412-b808-4fbb26cc3317-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e280210e3257b0bae6dded861ea24b614dd8580a8a2c15757d73b8069496abd
Date: Sat, 23 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658592412
