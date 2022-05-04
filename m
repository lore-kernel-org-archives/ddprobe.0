Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1200D17E
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 10:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651660318;
	h=To:Subject:From:Message-Id:Date;
	bh=w9QAFjzXGsUCjiTnLCaLKkb9JUxyU+LlMJ7xsIg0xEc=;
	b=RhYOyS6ufPM3JWKdeLgf6pac828alIIXjlkAW6ybF81GllPUOOBc66A3vKBbAXla
	lGr1Pzr6AEtKCyg1JV1jyY1vaVnISa0+ZZw+hbrklX7xOHziD76sCPfDtXFAMrxt7wM
	Y6aMwO5FPX5etE0s7OvRUVwQTrJQocra7/Q0Qu0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651660318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w9QAFjzXGsUCjiTnLCaLKkb9JUxyU+LlMJ7xsIg0xEc=;
	b=k8W+ZQqDyEyw21Qa8erUAb/zeIjuPs7GXnWjpwS6I76q9MnS5c63RaaJJVrn3a4U
	MQ1TkRagcBA8fk/8nl2KZYxpWFOt5qXQnrpx35RH0aMzYD1/hwRjrFDgOC8BD3I3V7B
	6Zfa+0KKaLDf7/a5Ldw1UeqF/fi7SXcujxGWImz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ea0667c-4f11a6bb-cfa2-4197-8e53-2eafc772087c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7375f0336e3525d8f151a883166577283203041195446be5fc7aaa2a176af6f
Date: Wed, 4 May 2022 10:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651660318
