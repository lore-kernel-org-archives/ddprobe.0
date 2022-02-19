Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21F75116
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645260084;
	h=To:Subject:From:Message-Id:Date;
	bh=zQegIcgjY5KFgohpoK9OG1jdKzkdQoOh/rO6+Fu2cg8=;
	b=gxIiUVQJFLQONRte+9zC9kfnN7gbPPBooX66Z1V0znlZkctWRPTMed5I5QOH9PSL
	gB1gOyNaU70KXwy9B/NU5wV/FMGJ0ISLan16rMT9aEMaqWSZINkSct2lTlui6NMYNI7
	r33SStw7F8blyLtlsV0xTsOX3UzYCsc3lLpMbG3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645260084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQegIcgjY5KFgohpoK9OG1jdKzkdQoOh/rO6+Fu2cg8=;
	b=EmcBIz/Pj7tYDDexmPOkTxEoVsfdTfH02MqNJA7X4OMi4ZPX39i+MnXUexy4dXIh
	LXMNHZRBXK0ufynXi7Xa/TK5RETV5vnIXxTtbckTclJhGYUWjJOPIQR88R298iC2vFk
	l3needxrx5SZzjfrjuLhI04DSM4TRFjKSYyTmFAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11249627-be8d5a55-b0b6-4e73-986b-2c06a14d8fc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 913fd3c5e1a41fcb93009b5314dbcfa74168576dfab4ed2bf0278c299215d026
Date: Sat, 19 Feb 2022 08:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645260084
