Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF4844289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647867685;
	h=To:Subject:From:Message-Id:Date;
	bh=cV+PSufJsJRxrW+bowsvtrxe6XrYqMs8kaFdNxFEnH8=;
	b=Uf2ZbLpOdoV0VE4wawHiyHc6/ND1lTSqPtxXEbG+q2Lg6hWOs8A2RxNWCWgUWA36
	U60g4OJD+xTXQTWJplUwMo+MF/i511mWXaTNEj6VekbReDNlxhgNTuJ4WroKZuZcRA3
	+BA4NBGSgD5ccM3zffEmLmW1JoskfMLF8v8EytCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647867685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cV+PSufJsJRxrW+bowsvtrxe6XrYqMs8kaFdNxFEnH8=;
	b=KXsxknccr76tokA2Uv+HTvREsvhV6qEt4sKr9+K8nX9eZjWHCC5caEwza6sncgME
	lfNFZvzqekiWpFaaH0qhNmGzw2n1bUPF9NfJuhb2B6O3308ki48KJoEOCVcfLIax4mz
	+85clc99/i62N2CCHzncPBfsx25QS7xh5ZbbIvYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac91679f-d1d83fe1-9105-4706-b6ba-d9ffa6b3f4c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 218b5a2f0036fd7ac51f7666ec772c07c157fd7fe4ccd69ed4cec28cbef0eac4
Date: Mon, 21 Mar 2022 13:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647867684
