Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C5210F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656646012;
	h=To:Subject:From:Message-Id:Date;
	bh=0MnOkjSlIuMjhVHGERqNOrwe7sCvGsZOrlVXu77rL3w=;
	b=aa9G9DDSw/2DGgmfohvV4CKZ27DuOCOhlexTa0OjZrv4LBmRKYFqIRl0iA7VW1IW
	8DIeT2TddJwhjdeLlUZCvrEODJITNOWTE5ciFWaypwJnokHy0b3uyqI4FAkWBsVsPIy
	mnWVXO1xE9tlPBce6tChQ1Cnudjr4kPB9tiNF4qQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656646012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MnOkjSlIuMjhVHGERqNOrwe7sCvGsZOrlVXu77rL3w=;
	b=ZfixMUS2HpOTkKAm64qvrHe05mivuQ45cv2QRY5r5OoOuniU7Ek5Y7L0dgFOgl4R
	owH3imJ7TgJEDAPMhNWXre7c6T1Azgdqb7v4/cCacjAgWEloXO2/zpEfdBS5N78rv9o
	NJ7FgeqKG9GNKQ8r+5afQIsWyUblgjW+sCX4rRZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7cc0ddc-2572d9bb-5278-43f5-9d5a-c3ed14a35c44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78a41687be10f319a00d0d5436606c9e3d7c1c5aec36671bfd36aa9301a925e5
Date: Fri, 1 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656646012
