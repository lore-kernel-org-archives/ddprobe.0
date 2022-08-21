Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E844A00
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661125252;
	h=To:Subject:From:Message-Id:Date;
	bh=AhgHO/6WQMZ0jGl0eiXiBYTr+R8VA+1JoW9sx2IidGQ=;
	b=FMwmG2yi0LayijYJdTgL9GfMAbb7r1Fa3Khibe5tRUJd7PJ32Yg7h3c77sT4uk7Z
	Tqp7q3iK4MErHkzdRXYKPaY+YPJBuv/3ix7vRfPTHClBEU97k+yVAoTLftGHPXKY4qx
	RhI5L/VNNx4LjW7EIUmuhu4Cn4qVdBAoXLZLU6Ds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661125252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AhgHO/6WQMZ0jGl0eiXiBYTr+R8VA+1JoW9sx2IidGQ=;
	b=VoWnwWC1bhbsqecKPFBnL86t5z/V/PWgQVZaBw6jYWMyOhLinNLjnhU5ADfxrZLc
	O3qN4MqkqVR3VVU0Cd3dkmdesU4kC3fFLZ4fZDYZOCeQdlG78fympwVeXUthbFF2+a+
	rzcXRr0jdtdsS32WHEGts+lvUUfKdwJCIw0FJsSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2c7d5c0-fedd1ba3-37ea-4b71-9d01-69fb19f815bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db6b274959014a9331882354ddb8effdcb4fea8e944d505f24347481db8cf516
Date: Sun, 21 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661125252
