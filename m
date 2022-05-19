Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012C61FB8
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 03:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652930579;
	h=To:Subject:From:Message-Id:Date;
	bh=fqG/h/4ydEQc7MEsLMEIODBv3PqoUra4zwxpbr0T4gY=;
	b=kI8zF/yKfRIkxx1ah8A786GB4SFidEfrlESVcpOzJprL7fACb8ndhDBqM+I/caiy
	pBB0yWRyKLt4OkYvBJJCRF3TbyTKo2Go6Yoy/id1cXF6RmOQzlp7wubIDBOb/fXQWBI
	oPloK1a4+ukRT030jsaB7jWJm4+Dmf3ci5GxFCrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652930579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fqG/h/4ydEQc7MEsLMEIODBv3PqoUra4zwxpbr0T4gY=;
	b=bV+OUcLNgzhm3WIivCahBbt2Zm8vzV0LEG/SKU5qA12F8dzz3af5JqncdQEEvN7D
	DoKdmjNJEoF8o7b8oFf/9m7OHvm3FIn8SlPFJfkQkoSC3ZJG4727Sb6TMQcUeVuyOF+
	BwhxD+kJQrKkLo2rrKEMf+MDrrsI5TXb42QqVVag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da570b67-1bfe026b-26df-48dd-8ff4-7f17bd0889c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32e1493c7a193f247092d15ed9aa038389e1677f395f31d4b7822fa858701a50
Date: Thu, 19 May 2022 03:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652930579
