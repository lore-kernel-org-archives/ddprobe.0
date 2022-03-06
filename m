Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E311FAD
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646561485;
	h=To:Subject:From:Message-Id:Date;
	bh=DeVzn+2ZBGEEnuoUomfPtYHbDT9cEn4ISd27F1bViXU=;
	b=R8hBPAE5/NPqbRAvccakBNurVx1osxl4xyBjWAWxFRbR1UUfAz+bXgqr34RSBX2z
	EFQfJd7S4Eang/ollRVf38WmHXDTJ3qAsWiEUFhtehg1dIG3Tk6orLs1XGOgdJCBvTl
	TIp9YAD0QtVwSz74iZ1JX7WnSJMv4ZG/C7/nz2Uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646561485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DeVzn+2ZBGEEnuoUomfPtYHbDT9cEn4ISd27F1bViXU=;
	b=fayXmNimAS20fEhjh2AEsxZo2VXUcjQKQ3JTneidcT5sMiSk/C+TkalUAu9+PVT6
	Xs68bmL6L6gcy5jc6ttaMHd/oiMqr+C1514qydrHn3zjtXH+rat26VPMG28yrr3pRDt
	6GsSDHFfaP9d0hpm6VyRPtzxEqqSStyCKpypO2as=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5eb6609d-cf8ee4b3-4a90-44e4-a7c2-2e52a8830930-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f164dcb134f95858b1df02a5714973061dc483fcff5a8d35b6d7e9513f5fbb8
Date: Sun, 6 Mar 2022 10:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646561484
