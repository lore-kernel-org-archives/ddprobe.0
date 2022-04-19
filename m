Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C874ED8
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 12:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650370198;
	h=To:Subject:From:Message-Id:Date;
	bh=ddvTr4JlJnUppulgFO4kRkKnog4O5yE4yLWJkzJ22jo=;
	b=luWHfoLhibjbrX6hgpW6hS5xkDx0uE9jI+faebo6rISQdf0qk5AzUwOmmFMhz+kX
	zWj8SCNzl2eDe4dfJxZCxfSlP0uc5XN5+S7wtYCXSGhbhuMFbowCEGthH+oXO4WIMCq
	t22tQKrwVvM/MXdQfOT+6qrawmN2WJrAP+9I4w5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650370198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddvTr4JlJnUppulgFO4kRkKnog4O5yE4yLWJkzJ22jo=;
	b=XyjUjVwkuHeJQDLKAaGFQrh6O99JgD5qXcSVmJcFWEnNZTjygeMFxANpwrKZIylO
	ZdlHoJa8UAd4JJPhUmFZl0lny1lm5sTZU8wppFXo1xbK6UVMayd+fYpOMxWKJDp/LfP
	ydCWEiEvo82AwFknCdFrlctcHQLyibmzNlLKtvqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041babb01-8b88b162-6134-43f2-ad25-e2b641eb5597-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d8a454ec962ba3742eff955b4f85a423e9fbaa79b791f1c228ce668bb963eef
Date: Tue, 19 Apr 2022 12:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650370198
