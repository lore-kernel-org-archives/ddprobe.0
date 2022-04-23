Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E948C7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 12:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650718258;
	h=To:Subject:From:Message-Id:Date;
	bh=kYdityJkVOtdLhpzo4zWyHAIpVGvI8VHpA0gzfF49+M=;
	b=H1B6C2oqFJ/dsu8zvmb3Oap6TsjvABu+hPWuYiXv7nT5cjqddfx2Nxk84hNlNf1j
	4+WzGkAIogDMmKVcdzTX+uzR/u4cZApZq1T7r2DIZW32/x2eqESN3V7aCoy55kIdpyT
	TSlyvxD4tYYq2g9za7bcqwkojZCGst6AkgKdkoEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650718258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kYdityJkVOtdLhpzo4zWyHAIpVGvI8VHpA0gzfF49+M=;
	b=RkhciB3gp65yJT4W6lMErjwAXKqL2kdHZvWtqrhiRexiqWpajhgz6yhkcIdcPZ10
	uIQTEiI9cJNZgBWrtnfD7Ed1cDC+ATiXDXYHvu9DOeDQ8eoIJkfoFrv6+7yY4ZuFspS
	CWg26VFPpChRdGMO6oCRabqOHmJOIUATdaQ5JSQg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805679b467-060c18e5-957c-4cf5-815b-3cb41e803e60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbafcf6d383df6810311378028404d0677f3fbf2192b5eeedfac9418a833be0e
Date: Sat, 23 Apr 2022 12:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650718258
