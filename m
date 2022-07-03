Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E5723C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656892012;
	h=To:Subject:From:Message-Id:Date;
	bh=RyyMFYOiv/LXhF6CSV1LoB+4CWj3Wd18puugfflwjh8=;
	b=W36OJqcaPIOHOwfW7dY6i0n5SnfqIeZpoYja7zoyL2HQNy8qxzu0mKU13KTZr9U9
	KBuvrN26ZGce6kz96F4Jer1gu82nZIGLvmyVuLdQoDKAC4TOq9CVaDfy8ngoA6c26bH
	O5U2+wgDvY8qMnWpYdzj6oGCkPreD0KMQAWiK6CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656892012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RyyMFYOiv/LXhF6CSV1LoB+4CWj3Wd18puugfflwjh8=;
	b=aKAxgMPyNEysWRxGNHf4bm5dA/shj8ukIC4JZo6IUaqsUuWANLB73ABXEwm9W6CT
	LHXhBsFmQlledkgo7pV8Sha6wUf7Zg89KXlIqa7WqVX/uL7/k6svh/dOt8I96+rDR4w
	PQWeqs/qMHFk35f2l5WaahH7n/gj5N6AjdnBPHBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c675b71c-a76f665a-5dba-4753-b512-0f9d2b175f01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb219329df3026dba7a4387b1be798fcee20cf94bc437060403a0615ea39a6d1
Date: Sun, 3 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656892012
