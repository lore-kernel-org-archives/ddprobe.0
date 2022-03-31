Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9321F7E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 06:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648706878;
	h=To:Subject:From:Message-Id:Date;
	bh=cAnaL/NM+VJYoJpmEb/fuBUvEQSfPyUVv5CBaxYYT6E=;
	b=PHJuFQVGKn1RYHms+kzu2SXrJxjJz6veeiHVpKPbD+cX5/ACFRIzCwrlmnxUkwC8
	1UDxvib8CPXOvb6fOLApIsjF11a3ovk3PS/eo1dgJuqI1luyBJUK+F70nFtwHoF0gA2
	pwcXprSLyMmWKLEfEDyUa6NLtfMTf9FgI0qM34hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648706878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAnaL/NM+VJYoJpmEb/fuBUvEQSfPyUVv5CBaxYYT6E=;
	b=TEWFa0LHdtJ1StJ/UO74MQi2t/UmLwX+5XwVP0L6FMZRTs+ZRkXxjroIB4aGqozV
	/htfupRWQH32V3oT15BePZrClbB3yn6IbXHQKPNZ4uB2KPzOgqWgF6V7lbpcgQyD59O
	eBquSeU28l4ZAOIuPoE88wxZheiVokwEZEFoADgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fde967b72-c467cbe7-c94d-4b02-a5ba-ab3eaf73e6a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f27dc74536de9136ebc73dd03b74bfd6140af3e241262549a386cacae46dab1
Date: Thu, 31 Mar 2022 06:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648706878
