Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A992F4A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654894619;
	h=To:Subject:From:Message-Id:Date;
	bh=TWCX0X055f7/tnU+UF5NRu5pM36lHlgQ7r/bw2kWOoI=;
	b=KJ77+b/ZPkfuNTHdU4k2b3PmaC8I/CGk+x+07GvPYaXjl7G51wHnAY9yDaDfKdCM
	t1qWusNZnfIKQqX1616Rv6jqtpQqUG9PObGMMfldr5tuM2BTM2e5fDJmWQStZw4Tn8I
	pSCeM9oWGniqA+FmeQs4vzNxFKSwOouOGJYGwe/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654894619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TWCX0X055f7/tnU+UF5NRu5pM36lHlgQ7r/bw2kWOoI=;
	b=aqx/7OxVkcHiWoz9MCbG9dvgMCxOF6bJ3+i7azJWmvwkpZA0D+Xyw/xSyntdfLbL
	Be5Wad14Kza6OkAqLCeI1lByYv+D27ZPBXUlJLLwpxhqcKu9KGYoY7Vv/vruG0wAL5T
	HpMhgQ+lwnfgxQriJpKOHoOELXZkvJDmOcfG4RSA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814f67ea89-54ed1102-5ee8-47cd-a201-dc92a71b9409-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58ff2e523604ab6cf8a8f673bf2e7ae8dced8d6eca37c62e7c6d8047a461981b
Date: Fri, 10 Jun 2022 20:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654894619
