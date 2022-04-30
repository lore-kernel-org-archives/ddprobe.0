Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113B723C3
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 21:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651355338;
	h=To:Subject:From:Message-Id:Date;
	bh=f5nxzJ/aBUGXHJktzLNh3vRtA3f4vAmyZHLeY5VYlTo=;
	b=Odl3o7csjN8FLu3dgrzYTCJ28qYx8PsoqwKI3j/pOH7ln+/9Xz1T6T9dS4S9UCpr
	Mm2xYgHBuPtBeAJzJdkKhrSQoptCA6m+7T8liEOkt+54JRGh1EO8IJYGzMd5RGF6Kz9
	JUZWQ8hy/v+RCf7tYKd6/YozhR8GF55rDgxuGw5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651355338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f5nxzJ/aBUGXHJktzLNh3vRtA3f4vAmyZHLeY5VYlTo=;
	b=eTGpefTiP8LJcAXgIAPbm2zFOMFG5AnwqoDExn0gHuDUfwmKQ45GJYcGy9bkKLTr
	eaI7dKmDaNd3UNmOmY31+IaR64qB9EeS82ZcEgaoNZa6TobU72OGOVC4WHN13pLu/b4
	NCKkm7mfIuEnc1qFlj7y9nhuwANPJPrQu3NZ5jmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c72c630-fee1865e-1d8f-4e26-a49c-3e5f10286f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c21faa1debce7b2bb12e4c399eb97ecd2d6d71b1dc3a0dad5f262b6090a66936
Date: Sat, 30 Apr 2022 21:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651355338
