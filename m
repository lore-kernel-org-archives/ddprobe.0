Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715203B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645883184;
	h=To:Subject:From:Message-Id:Date;
	bh=6Bttw0iX/rzT/dwM4wFZlGvc4S9P7xDBy0QbI/EghCw=;
	b=kvmB6aakXBhxG/oxCZa/iD6tlcbGuGKlop4d1kkaGdL5DZiapVCO0Qrt7cPxm/9/
	dQRAnkwpkxik6jCL1yAu2EAJRsRcrr2PDzKmkr31OsgYCWm0yLzQBkkiK2wXGKFik9h
	my7ONFyUNckymNheNzleNY+g7lgbDqo2ub8zJJk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645883184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Bttw0iX/rzT/dwM4wFZlGvc4S9P7xDBy0QbI/EghCw=;
	b=Lh7x4q2tzlBRSxwQo8tNn8cn2Wozk/NoAbY5lZfEgOp4+YvCOEn62c/U5SnAAYlz
	JQV0eFHqVXnQBfwt36OKxyTZF3/L5TOF42Xmm94YETshY8Deo5VP2EN0QCrqSLsCXlH
	rQ0EEPIlvpu2LMo8Dh6Q2vCtspp8/26JdzSnYfcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f364856b5-ce35ada9-7b3b-466c-86ec-e0eba2c60c39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47b3c5d7bd5ad23d3dac05874cb40b68b9c97d1f1cef923aea3e7128ce5f0783
Date: Sat, 26 Feb 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645883184
