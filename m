Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C01E361
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655045519;
	h=To:Subject:From:Message-Id:Date;
	bh=s+sXQYoEi1HKz2wd3xn6cK7NSECRe6IHIZ5OrlSZP5E=;
	b=RaJ+AQBYVeIDjHm+eoagSWIUCDVMnVWO9tmzXa8X9nzRVn9zmhOIm3p4982KPpUE
	m/qSstQgEsAEpUDiG86cosmiNjRRXxIgmP177kJVTk9Xikd5GylnWUrqQWrFwlk+g+9
	0LoXGoQ4043dWY0JeRbhYdODl1K6W6Bz8Nl4yoe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655045519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s+sXQYoEi1HKz2wd3xn6cK7NSECRe6IHIZ5OrlSZP5E=;
	b=hcvkCHQPfY37Y7rENqK5v2MW5+G2/roZGRXWxZkI7pVwPfA3uxS6gx9/lJcLMGmn
	52P/Xe4vZpgWRna+YZxcFR2j9mFX//T9M0paCCZWcZ73SRnx/FDwkOcyeFpW5t7hSFN
	WpByNbZ2OksKhWdmkua2++nfuXrWwCqYq140MaN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181586677f9-cdc07a75-5b64-4202-a106-efdf9e419a52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 799b775b816f10b5929c69981efcda916a9873a59392ddff657b19b28eb1f7e1
Date: Sun, 12 Jun 2022 14:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655045519
