Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5953A1852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 09:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651310998;
	h=To:Subject:From:Message-Id:Date;
	bh=cgnt1jhp+OyD+WLTDN9hUb1YN5t+IxMD6sXyrAnbmEQ=;
	b=CW3QEViMLi8w4YqIS1SWD39ZjvTF0LhuDiVDYpCkjWvmBA2H75MYNezNAT3inSU5
	ytJcWESYhe8TL4+Kp0DKvWS6FRLLaoo/A/nMsaIwynh/UElcUNngHTk5OV0iwYDG3rs
	5ggYGEl2ogfy9F+AgqKSfhmBCKzCgM5FQ1u1UB1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651310998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cgnt1jhp+OyD+WLTDN9hUb1YN5t+IxMD6sXyrAnbmEQ=;
	b=K8NZZ05WqpLSurNX7ce4i13mVmDtaqUGGdeYubgREMbVjDMwqYeh1BVhm1/DhYOC
	Wn4oAeP6ERoFrtqP6ifzjQJ2YA9zC5QzOhs3DlQUNq1BnTbBq3e+0uW8VARf3zlNcFp
	a9QSKwvsiFoXZY0Fk/tayX6lwWAuZLYehkaBMgLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079ce3310-d56d7738-a4d5-42b6-a9db-c47b572eda07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c95f1c4b55bcc7a4f0c9e3b0f82ac325c55a024b0964754277dd96daf0e861d8
Date: Sat, 30 Apr 2022 09:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651310998
