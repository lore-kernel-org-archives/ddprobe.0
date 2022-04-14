Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBB315A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 04:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649910538;
	h=To:Subject:From:Message-Id:Date;
	bh=rAbesGt1h2uUMxxeAfb9WuuXlGBzCafNOxb3Wjo01E8=;
	b=iPog4oCh+SgEhWI9059bavZfFA7Eozq9eWlQFaD1o/p2RLFaRE8P5dTxcnCeM1Pr
	Js6YIb/Pph0CliI6DSQAyIEf8KQtKoMDiRLR5KzBSu1mSZ96h67qWUt18kbo2mwTyy7
	8w1tA9oSTAWZknXn42SnxunflfYAE1sEtjZ8XRMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649910538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rAbesGt1h2uUMxxeAfb9WuuXlGBzCafNOxb3Wjo01E8=;
	b=A0vw9M/BiXSa/KcGEtS/gaRxZ2/8SQs63mAz4KW6oTBvI460Gli1IOFvt6G3RR5n
	PzWZdWP2LPapBvMdcx7kjcX4198mb9j2oeLqoj7B8WROzTXne9kDv2nydgPXZyDhzYI
	nQ1Jb1WjARnG6sewVBmrwb96R0QU0w4hRaFM3jJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802654e035-e7d1acaf-248d-4568-8b92-38856a945d3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39e6346227c0e056157bd43859e997812ac0b8385b1307a5f550f38effe427f9
Date: Thu, 14 Apr 2022 04:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649910538
