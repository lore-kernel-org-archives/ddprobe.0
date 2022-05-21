Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035C615AB
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 03:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653102779;
	h=To:Subject:From:Message-Id:Date;
	bh=AM2Fe8wVcPAzYus+GsqKHQiXz5kpS8vjCQ4frWFxP+U=;
	b=JEuKltnMwVXDbc16ZdYk1M4XuMR4+Z5IlsJsbZEVkvozHj4D1zPZ5D0pMDr8Dk5a
	jj9+JCxdZqGlvYx77uPm2bu52wu33KM+UnzmUB29OlDMpQStpc4howaXgLa6c9zSaXc
	4Y8j8gdDDO3V4zdk81MEzPm8BVKo/gZywsL6W/lQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653102779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AM2Fe8wVcPAzYus+GsqKHQiXz5kpS8vjCQ4frWFxP+U=;
	b=GxhaSgqy+HzPC8NT06hnt8qUfLcdedf8OSILbFaHyay+B0vYr+4lfil5qTH+jYvq
	1RyiCgpYBlmDM6EtxP6lcMRRrZSzR6D9dCPg7v7bkGgEYa1XxB2vpWERsK6lM1kFY3T
	K+U0lJWaiYHVNYGbiA3p0l8HVXPNGe1pUek29lzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e49a9b8d-c062dcfd-564e-4c78-84fd-38c22aee0d5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 924b50f0b34097f782ea88921490dbab2d65abe7054c2f8b440306cd1629d3d3
Date: Sat, 21 May 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653102779
