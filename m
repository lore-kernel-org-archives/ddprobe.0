Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1467C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 04:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650774298;
	h=To:Subject:From:Message-Id:Date;
	bh=g0VM8dCGIZ1tgykO2ud0m2xc0dFCE7tGrcuCsJ7/uy0=;
	b=cFwPyZ6ZvS6F4VO867mHox7bqpgEWDCYAuY+v0UCNlj4PGPwpEl1chTN2OYEvJJ4
	jh9K9Wx7SMAcpNw597bah0PDPXGcraDsN1Vn+k7Jv9SXt9vl5PLTGSgD0msrtPgZZu1
	YozBZJ2BI8s1iFPWmagEgsnJMwTTozpsPVfj/5bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650774298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g0VM8dCGIZ1tgykO2ud0m2xc0dFCE7tGrcuCsJ7/uy0=;
	b=DbyFg36eu6k4J/UWdm0mcjT1nbIFCa/VaGys4ZPLl9LDTKDC4ZZ2T3zSgQevYnCv
	k2ygkEry8ycbP5qqXfiwKGiSXPWWhb8+rSAyhkRwrLjS+4MXaTwKaoCUyzHw6aGaayP
	XaB97ZTGYY5nvmGl7y2WzzLTtAx4wsodh7+88Oig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059d0ced6-4b6baf6a-8f02-49ff-8deb-094263e3f12c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9e6e2e0a03d458674023c8a2f3f871d510badd89c36c12d3acfa80ff525fbe1
Date: Sun, 24 Apr 2022 04:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650774298
