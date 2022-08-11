Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F2117D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660183253;
	h=To:Subject:From:Message-Id:Date;
	bh=DO+K3iQtyiu1+8DsiSpQlq84aUqzWYoDtfWzJKCQL34=;
	b=Zo8fF4SINHjN/IAQHuv+j1znbKkH6pL0e+Ho7NGCgfADWXnGStVsMDQZPKzkvLMc
	kXPeuVJ6Xyf5mysm+6MgLzN5nuXZZK+WKJFrbk6CW2N8kIBcuiqRhgL7hKc2ZX0qBYt
	YWfgANqbhtk13+aJK5rSnAHIoxbt4QV/Xt7WGdL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660183253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DO+K3iQtyiu1+8DsiSpQlq84aUqzWYoDtfWzJKCQL34=;
	b=Jhje8RR4DoBx52cOmpTEEjrvxuJrEBZG8qVokQbk+gSecUvn49g5P77gOU4zDVfR
	WO81wH2yDjo526vUaiaOa1oJJyldQcKpoh4U8eJXifdNKEtRZeJww0vIPZ/i8r6r20t
	9QyBwPBt9u0iJxtclbOIRLBrJm2ohB4OXVfE7G/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828aa20e88-f9aad7f5-20e5-4988-b27d-2d606a29dceb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5645dbe21c6d63661bcb669d038dbf533b84f488599a672bf4a4b242b8fc4df
Date: Thu, 11 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660183252
