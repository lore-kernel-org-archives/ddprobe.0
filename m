Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD097C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 02:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655087159;
	h=To:Subject:From:Message-Id:Date;
	bh=MCsKTvpNnWN3nnCIRV5skf6lgroopntrlod8z0WNBTw=;
	b=ZsjwYOkJVrbYbdSD8v69RriCrYMfCGdTP7lH5tEFlvPdW1yPHqXj3hC9r2mTw1RT
	ycxjrRGSQM7K0ZdvLP6M4qZ4h7azFELBELlyUYzCL+sUbd5NMc1h1PwuQJ1KO4Qj/80
	DjpnKunZJpmYSJ0iSQQRfIwrvSdCLRJNJl0/9EKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655087159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MCsKTvpNnWN3nnCIRV5skf6lgroopntrlod8z0WNBTw=;
	b=gnc2wrfneFGBwWB4ZTz/xAS3VCf9QsOJHGF8HIpVtplZIPcjB17dOttVTfKBXAeE
	yShmcE5UW4j4tA12DvOpZL1zmDUHZltg1QB+fUPuHH/q9bmiI2IQXH5t9W5t/jVpx+S
	FXQwducE/TiniCuRuUnfnvXYh2b4VUBavFaS0EvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ae1d7ea-69e4a827-19db-4cd7-a669-1ffa46e5b39d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e0037fbb97ed02eaf79e8a1fee023bcdf60a5754eb381f342122c9fba8246ae
Date: Mon, 13 Jun 2022 02:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655087159
