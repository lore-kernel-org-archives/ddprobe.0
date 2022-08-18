Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C78A15A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660861853;
	h=To:Subject:From:Message-Id:Date;
	bh=MXsWHFNrRmdKCPpei06ebQD9GhzvOSFkDaw+cFt9lMU=;
	b=jfbFzqnaRHcze6m7BSQ9SdFSrrgm5A/HItU0KN1btKRFGG2Bjcz0mlpA3vM/FGWa
	mIzv7kzRYeNQVeDRTmfVbnsJfPqvSde7qPrDfLZGrzg/y04kBqbZuV67chslIPk4dPU
	cA5KRFz7N3cNSLQSPXoCq9cT9Z7cHu7sJTbjPmJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660861853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MXsWHFNrRmdKCPpei06ebQD9GhzvOSFkDaw+cFt9lMU=;
	b=k9I2HJn4RIbC7021OzAeQqxFld8QTIJNhYJfv0MANai4bUjnl9kbEFu+gqrXvq2S
	iETAtJfBMZOyNYMW0YI6GZEie83ZkvTyVCeWzWbMjUujZqqSwMQZTQ1BBuLZyGaMrvi
	O+qdItrLLMVI1IXKTe/IF7DIHSOGaCNCk0XjuXwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b314abc8-d6b39402-e2f7-4123-97e3-acb9ad4fe269-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddcdec76cd19cc629018e0c7e72343621540e40d9d32646430d47146fea49302
Date: Thu, 18 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660861852
