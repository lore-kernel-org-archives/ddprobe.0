Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204BE1840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649706358;
	h=To:Subject:From:Message-Id:Date;
	bh=L4GlV7hHC93QSXUPFUsh7E5Mnciwtf2cV633rXnVvm0=;
	b=TDEfqDwDv5R6P0bV7xHN5+zpGwH8+x6H+cL9vxPsy6BaZclGMbaKYZXaB4NaHNY3
	BC/EecalMbeqKKR9N4TKMmJqwUMhxzJx6wQtMW+niez1IvGOSYMU/0PryBn3Lbybets
	pVYUvvXygzhS1rJ5pzOJXQNo+xa1AWCISG5W45O8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649706358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L4GlV7hHC93QSXUPFUsh7E5Mnciwtf2cV633rXnVvm0=;
	b=kzYOgdjG1AP26+ZSN5AfZnLKdz3xI/PUhGuzJlRurPnwlRY3HI1JP4x/2IzgDArM
	Z1OIONdUZo70DDPM1w3hFfUb/kOW0ZOyW5N0nRMKF6SkoXpjkDEHfvwugRh9B8W7rew
	u2li6GjnKo12yE4ESIknrnBzKBMglbJztmLszJ+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801a295653-cf70f98d-a74b-4a01-9419-875efc5f12ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2015d48fb3984fd724667ea729b5f00f7a4a515befa9ccb6d0ef4af24f4954a
Date: Mon, 11 Apr 2022 19:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649706358
