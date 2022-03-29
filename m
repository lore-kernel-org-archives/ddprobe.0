Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559192565
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648559278;
	h=To:Subject:From:Message-Id:Date;
	bh=o75Dz8FUw7tXOrZ07FQboEiKeJ1ih+gFZ8cPZ5ACl8E=;
	b=haew49OKcZfpfh5tSp1yREJYwuFyCu3gCwxxDhjlSU8yM+0jUCuPy6NKP1h6ntqk
	IfDZeI+rQoczEvF9VEOdDQuwB36qTojwpRJ5/z8MiddAaROVSm7bENYaFn+65ITyOOr
	43uvU1t+KD0Un+pivXuBQj8Z2tcTDdycXYEjvf44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648559278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o75Dz8FUw7tXOrZ07FQboEiKeJ1ih+gFZ8cPZ5ACl8E=;
	b=ZCHx6io3OYWPA3KCTEUNw71J0oAD8DsgYzIq5pAR3wzuAzCpoPT50bpXMcXZSubE
	eb3wX2lBypYGer3/tvUgtN34DwfywP3tRcaZ/inQ6ONI/7M4CNtYnSR2KvB1rZe1Y9N
	NCyy/ih1xWLUTZ2jAsHZ+yrFpJvRWcVTbb9u6rOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd5ca48b0-e6f1d4d8-062d-42f5-a114-7e509344e1b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b1a4fa73a8e03841b5b22ce58409d8eed5e6e8b2364a15f476c4241575a941a
Date: Tue, 29 Mar 2022 13:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648559278
