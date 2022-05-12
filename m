Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2660E33E5
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 17:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652378039;
	h=To:Subject:From:Message-Id:Date;
	bh=mqevAmOswXextw8hHWsrE23ZgIQraQhJCGQ/hbJZ5xw=;
	b=feTDIT3807hJmih2EcbNsKRSG1IX4sbBL6cOeZGLJ5V/TBevtejfXRpGjC5QHC3x
	40cmwi81h1Iaq7hrEnRi/MNAfvMn4El+ep0G4yvQJR/oY6DWr83OLlGWp+cn8j59peq
	4+skm6j9a26NAG/K61s4SLJpoDXRut2Ilikp4ZX8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652378039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mqevAmOswXextw8hHWsrE23ZgIQraQhJCGQ/hbJZ5xw=;
	b=cS7xYYGubGybzmZvY3YYb+veDyxA6FKzPlxcwmX5HNrd9hNEmW9YPPeL5D24XJtA
	Jnw9PTUYzkAHz9roSguLizSeDP5dPTm7smQpN9nVmoaKneWn0+7OC7IokzF7LnCNGUA
	RGO1i4lTU3eTh0qbq9RkNGGJXL/Kvs29WTxV6vEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b967f3f4-a50b5995-9200-4882-acd0-5066dac87e9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8023da2b08ca7afd81e7afdeeebed5baa7b3244f6e271f2dc5c94db630f0674d
Date: Thu, 12 May 2022 17:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652378039
