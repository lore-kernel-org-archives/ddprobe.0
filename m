Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36F77C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645863085;
	h=To:Subject:From:Message-Id:Date;
	bh=XhwN7WEsX/6M/IB83yIWg+phnBb08qm7Nf94Qrs6zFs=;
	b=ZFREh4R68bzQhuQExoJuqCkORfZbtoKl65eGS1dcAGCmyUpKBG/EvI0YaIamJoME
	eZRnIGI+NJct/CWSNfNknl1DrbiuC74mUyy8eTn1tGFeBML4YJyp19N550Tk/Kj+Sbg
	KFrIKxUQHmFihsCw+U1SI0pTrRNtUALR2Mljz4Is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645863085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XhwN7WEsX/6M/IB83yIWg+phnBb08qm7Nf94Qrs6zFs=;
	b=Zh9hbg2DrGO+sfArCtlVZmeQ1osXVOAsW1HNcVyn9aQS6pTpwehMUReoJ7zPmTlI
	YxTufY/Lz3XOZ6wdPVEDLvoN7B9wkannIzHPVLR45bn3z9y5gHn/+IEi/V7t7BVnTqa
	aTikV0Jw6Ahw2nfK6jCGi3CgCSr5lcz+Ktd1Tm/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3515a2eb-9bacc04d-628e-4236-bcf3-88f54dccdfe4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 771666967b095cbcaf4d50679daaed6f80b8c615f5250434bbf33d2600e724c2
Date: Sat, 26 Feb 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645863084
