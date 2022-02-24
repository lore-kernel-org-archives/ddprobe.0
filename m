Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC330139D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645692984;
	h=To:Subject:From:Message-Id:Date;
	bh=LK0ZMf7Rd5AL/RwO1mYADzvEhd/2v85IbCrXWEjuxqw=;
	b=gXqGxpvP217n2DOs46et/yFRq8UoFzduTArlKsBMnjWn83acyrrmd+eGCZfiylQC
	7xTyNxNyc/w4JGUkji1z92Qgo0mT04tAvMug9ujyZk6wcE2KD2wJY4AOlMyOO2g/Wlx
	4Mq8NG8ZtLukEdIA4iB3wZ8DADC+HI4BLDmkgRbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645692984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LK0ZMf7Rd5AL/RwO1mYADzvEhd/2v85IbCrXWEjuxqw=;
	b=gkr0RfrcRbXHPtoLzzSMMTaQT1fbQ1Peo4rdS9bmrzNBsPPWupwtpt5X/qyCvBWI
	oBtYQoTX3VmM+73STQ8HySi6TNzLD07Pu19Er9kCI1YH2cDNc5WTJc2MK5ik49JQ6wa
	OTDcFe9x/5vGPe1DgZEEau9cHQdmwMMpuG8Fpu9I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2af21da3-0eca508a-e47b-48d7-a8e1-56b1128fd7b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7ccd811d091b68e8ccb936d8755ff119f650916d007c92e8334eb816503cca6
Date: Thu, 24 Feb 2022 08:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645692984
