Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5603233D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647780684;
	h=To:Subject:From:Message-Id:Date;
	bh=IODtpms9GkigZZUGOpjpfovJIRP/9o3X0ZxrDmiioT0=;
	b=ikzwkCmMlF2kIUIOOcFOg1WLBj5JzmzhjyxgkjqGSdrXixSnx9kQa7z/qX1FyYze
	2/yrjtTHUkeA8xB5ylEJUg49/rgrDbhAr0RlAJEdKzAB4DimQMemclN+Iugne9z9Mmy
	PfANSuU+zWInBLKvQ3cmdjkrIg4Zvi1VO1fpOEoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647780684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IODtpms9GkigZZUGOpjpfovJIRP/9o3X0ZxrDmiioT0=;
	b=fRATgKhfMDsqSt6lXxDuZmcvtgAk0Uqv/EWegosNTdBvB2k8angUnTY92kLe8A8v
	inFDll9Ao4/7+xkgOvqQs+w7dm3YIX6ICaibUbYsT7L98FFqal6oXW+fSnjcGPN+Di7
	XO89M5+ZdVzwUZZ38XyNGXHbVUiteCBlsTYKhFLQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa761e3e7-0186dec2-9b6c-43b4-921f-1bdfc72dbfb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 836844d74583c15b1b1ccccecae0a52691bccb545bd1c519cb828dc8e0568ef8
Date: Sun, 20 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647780684
