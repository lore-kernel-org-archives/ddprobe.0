Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACCB185B
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 15:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650467278;
	h=To:Subject:From:Message-Id:Date;
	bh=l6lMwcxAijv0i5wYXUVz5npWZB4loGE/SHy6KpalSpc=;
	b=IToKOA00GJ4dD3NHSYOiG6YiIa5OA0JH0l4zot2Z/wU21NhxUDXy3XK6Tn+xmXST
	E/0H9FC/eiCIeIptwfjOGSkhO/kDiIKFiJo0ZHWpvPXsNEaELKoUYxm+zCla7t866q+
	+ompelNlGzAsL3s0oR4bt/Me8Kh5TL55Z7M+Mrxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650467278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l6lMwcxAijv0i5wYXUVz5npWZB4loGE/SHy6KpalSpc=;
	b=ix7xmx/v9DZ/zWVSoRGZq2NxVuCCEe3n46oP6gmK1FMFAVS0v6OSUs4kJ+hfBZve
	8zJlAHDrpJcwZJ7ueZ+EPTnUN8Fh3z38DN89gmjjXpGx+KLwI9ONJVvWH+xKWVGiw3L
	+NOFYQWEOoQ/dkJoRuZyjNBe/thm5MgW7dEAOP3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047840dd8-69b53d62-9338-45d4-afe4-112e46d61465-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d46eac735cd4452944dfeb25b5e1af0987772c9fb4f8e948b69557e4594d6716
Date: Wed, 20 Apr 2022 15:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650467278
