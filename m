Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAC6441A
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656804412;
	h=To:Subject:From:Message-Id:Date;
	bh=Zx0FEOmixP2nqqSB3LKd771mEEU6/YChpwPVxunpYZw=;
	b=dnx9rq70hlGGLdsu+xX9ohB+h74TPzVkKorIhk8tFb16TAswYY8EmCzvbCecfc2x
	sexAv8WtzkgQbm2s6F3lnafE1Mv3zEeS0QAT7gt+qHTLHGlY35NHq1vTcjTPbV9espi
	cSU0cRBtTsuK9sScjzU8XCIhvtfVOtLu8D8uOsyk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656804412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zx0FEOmixP2nqqSB3LKd771mEEU6/YChpwPVxunpYZw=;
	b=cbFpirLI/3jTGiVHmw6LlU5b7guqchi5NZIVdWusNlPoXe9bF8ee8gftUSJn+vPZ
	WTBmUMZ95AHwtBlRP/R8M9XuKwDYONEE9IkMOZVJnCF67XrNpVtGvZKI+fPzhrlM8EV
	w0qaBZMKQHskrXb6njXMB2x1sFJQBE53UgjWkNr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c13d0b5d-71b2d5d8-7f38-42b6-a082-253ea704afb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08582909d89b9d1af8629e0234636bc337fbaa2dcb4b47ec2b1094bc2599c8a5
Date: Sat, 2 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656804412
