Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1530817D0
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 05:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653889439;
	h=To:Subject:From:Message-Id:Date;
	bh=kt6ckCxen9BxZY7l8zssiS2hm7HZ4J7heMOkg///J9U=;
	b=LqB/L7nSBXQHX/Tq5QvfxoV7JlCF9DEINrTkkaD4TnTyNOq/eHbnLbv01XUfgTE9
	SntmDOe8lMO66oEGS9H24akQUYlC5aj7dpeuN4TekffXqI4qhgTcVP5WC5qh1UHNbqC
	K6Z0uAvZRz+lMD7xRGPA6OuU9eXYQ1DMEMc9VEEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653889439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kt6ckCxen9BxZY7l8zssiS2hm7HZ4J7heMOkg///J9U=;
	b=h/JVl9ZUaYjs5q9oiM8mT7aptfcLxmmLugMQ17bzOjDqzyYxuHtRHMIsLTKqSw8v
	AxfQogaLxmzd0WMM2UO9R+rB+cIxn2C3wtpzTBINjozjMQTBBNFB7iguLhFKp+PsJ3h
	lNuG11FiXGBL5v8cI2u8xyjd0Uu2X1es3S+qIgOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181137e161f-a2af0f83-c9df-4280-bf03-bc8ed750395f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68c912616092747f172e65b0a0e9dddf37c40db454efd4f80fc893be5a52c14b
Date: Mon, 30 May 2022 05:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653889439
