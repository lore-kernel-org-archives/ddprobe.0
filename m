Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C33C00
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 23:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656717412;
	h=To:Subject:From:Message-Id:Date;
	bh=aUfJ3SulalvoFzPDAFuxf573baPyuWlImXBxAtE7yBA=;
	b=V8RPJXk7gxIYpm+gBOiXbISHo0IAimynVjO6paKt1W9PYqltcpp0orfeydL4rzLn
	PwtEUKefxRXik7mZU4aA03hMJJw7du/khn4WTG9LqEI+ZcQKaiWoRLsCPnHRSOKc9K5
	HvJwn731jJPiwJQwZG0BDUZCSq5qRlbIBKERg1VM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656717412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aUfJ3SulalvoFzPDAFuxf573baPyuWlImXBxAtE7yBA=;
	b=gnBC7w9shbWdJ5H0qZQjLRULRlVsIKZRuj4cu6upy1NspayWOkHVzOsbUfw56JLo
	i4Es2WVkx4Q2qRub7YLEN1XHsMBlzc7kUW2/T7zUzX4itKs51S607nV5x6u5D/BL3dr
	FlUzEQtLVe17sVbw/8l1IKCfR6jvTSc4u5KRQkt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc0d87e0-45d0562f-414d-4d93-81b2-25783faa067b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b79bc4390f94c4804e0f0f97d1284b911592b13a44f923439d94c8e2e34f1e42
Date: Fri, 1 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656717412
