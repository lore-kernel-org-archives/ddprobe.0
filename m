Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2EB5388
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647642385;
	h=To:Subject:From:Message-Id:Date;
	bh=cbZw9Y+BQ6guYGeS2neeYhIHSv4Y66Ve9meCV5nMv8E=;
	b=cyt5lMKxbYnJCi3VvNO8eYpgyWtAB2xf5+gcQfD1UPu+u99sQZHkgekve3NV0USN
	JrvnNcMCeBnqyVbK87H4Bt2Z+Dimpxj4fEbAP/IAdq7rREpD1NDPo5YjRVZ02feq3JG
	708KbyhYKPPhQLKjI0nXJImCGPu0wzRzmj7fel7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647642385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cbZw9Y+BQ6guYGeS2neeYhIHSv4Y66Ve9meCV5nMv8E=;
	b=YM8CZQk4hHftlopuYX9w3j9fPLxSEjPGYNfbLRtCASctloagAkk6/xKCbRh45hgg
	n2M+xRAH4p1fvIlXXv75h2kaICPog+8YfZ0AXDfM+ADQbFRxKleVr+S5LTQ5tdXMvsX
	uJpZaGkx3ADEEyYYx+MsxbjWhIgrEC5V0L/bUV78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f239977-83a46d34-bf1f-4c95-b6b7-4a6f9533f6b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 265f18d03775bdf0812ba75837cb9b610e8cf7717c6360fe8a2aae2ddacb5168
Date: Fri, 18 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647642384
