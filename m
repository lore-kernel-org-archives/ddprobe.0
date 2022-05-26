Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF51389
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653571439;
	h=To:Subject:From:Message-Id:Date;
	bh=hZPqcePfuV2H2oREYiOf62wX02TKCmCntuOnUYD3OVM=;
	b=hd1UbQwdJKtqnSLBsyWnyN87TInWmSQI8kkvpII1kUV8OgaxD4S+583D85Y63H5J
	FB5Cwr3TCqeK6tjsJ4ZHHCOK7eSpxZWzCBbKPDfDVpbNWofvH0soA6xiyuiOfQskrQX
	9o/EBjz88WlskFC/KkTZ4dVgQQE2kNj6PL09owuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653571439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZPqcePfuV2H2oREYiOf62wX02TKCmCntuOnUYD3OVM=;
	b=HeR57WB0P3627CqgXQq/ltqMZjQe7vfLcVff0MZ+I3qhbCJMTqXZlEYruqQrIDIR
	aTDM3JS3y0Z8qrTEqAGbBK2WkyalvhE7YT1789RjxM+/ygs2bOiuhPsl+gRoprWF4Ly
	hOrzrieHSKvzP4SixabbEf2W4gFskSo37Q+5D1+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810089ca97-8ee129eb-edcc-45ab-bb58-3a658e274f5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 851b09a3f65857c885839a44dc517ba12386a7b50889800801b8e7cc1033bca6
Date: Thu, 26 May 2022 13:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653571439
