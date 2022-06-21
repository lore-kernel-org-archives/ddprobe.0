Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C9AA32
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 06:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655791980;
	h=To:Subject:From:Message-Id:Date;
	bh=5V1OTzeasbtrrRekGfCptoO09JAkPhH953In6aQgYJU=;
	b=YjFXB98ujYhtLF52FqHFJe7kiW2GIKADCu3Hpe10s7s8mRqnQXgn6kY2Y7owB4+g
	qfOO9a/YoEq1vM4F7SFYucFZOop9EtEQobwBYrUqTII/TjdXjKrrRtb1c058lIyG1uN
	C7JGQYtznI5q+RAX5TibRljBI8MWGHa22BJwoLG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655791980;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5V1OTzeasbtrrRekGfCptoO09JAkPhH953In6aQgYJU=;
	b=EC1fuDni8NwK291TOwsUxteKl20MU7fy+ksYQ1WE928OGrN4EQZ8wj0d6+WEBylg
	+obIvMxBwgKtOY1mBVMO/Bn6NUzG65HlpGWO66hvy2C0+oOTIIZxwJqnE3D15zvyu9X
	fM/bhOK+8moA9QLslhAQm2EwU6AsmxiBmU1BbCa8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018184e48ad9-930a047a-43ff-4a26-a4e6-8e9eb0b9691f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14096acadab317d6d57e76704168cb241cbd25bf504a438b77326f211e049998
Date: Tue, 21 Jun 2022 06:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655791979
