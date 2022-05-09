Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C35521865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 12:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652097778;
	h=To:Subject:From:Message-Id:Date;
	bh=dPrEXUFhmIqBZIqh6AracAVPcIiktvbESgYWRzoUPU0=;
	b=Be822Ze4ru+X4xUtXL5ZGSaMDK62Lmf/jfDB1gDZOhd6wfz+p/SBKnx5WBE8egQA
	dNvD8hZ5f/1NR0fgM98uUkXa6qajpV1SAfVmnCd1n8FwclEsScstjj4FtJQ9/hyC8NF
	jO7WCXxTIGXPzEqylCUhlJSal1T5akJFFhVGSUU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652097778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPrEXUFhmIqBZIqh6AracAVPcIiktvbESgYWRzoUPU0=;
	b=SuT+VfhKqqArWSiud5XnefPJALYGa/EuzHnlIZnKbClaX4vW/ane1uz3wLL9j9tW
	hmrDNcdIv0gFgi+HS1j+ACXthMePB1nMFviEYWIA7UfT1XCGq1gFcABmKO20V4HcLrp
	qi2fSCeMne34oBtK/3cMzAMIgzPh4/bVD7Oyw2xI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8b38263-65d1615c-f2d7-4457-b59b-6acb70f6001a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92a22200cc36d7efa67777225eb006236fc30e062cd1c2112eee640729816002
Date: Mon, 9 May 2022 12:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652097778
