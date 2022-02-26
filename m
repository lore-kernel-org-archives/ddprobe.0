Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25D67B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645900885;
	h=To:Subject:From:Message-Id:Date;
	bh=ixE2LhGNVu3tnj8VYXbsVMNQQgwYWiJitw7E4hZkU6s=;
	b=EjPnUMirAwd2DcOArz0yiMD4eZKSPaXi3Y/WoUluBI45vn3zHWZD96g9/zWBVqCb
	QFNVr3lpF2goczkuKEfXacI6Rvx9ZJIP1RVU4DITGihoYk2Vbgj/aQcfeDmh0auLoYi
	0FrgOsHq2ZQAK6ysg393JEtTzkXmH24KsidYDl1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645900885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ixE2LhGNVu3tnj8VYXbsVMNQQgwYWiJitw7E4hZkU6s=;
	b=cQFyzCoJucH+jGO/7rYKQVkWfJq5X7I5F/a7Srg/KTa9KgLHQSIZ3cBiHUX4qVaa
	jjeOK8I2q7l36LRIRGZVUBfIO8IFBpsUw3ABVMnXz5r7cYoWM6kTWK5B1aolWJEgeQ/
	bytU+3OVRiaDQuGJ8+mTDTCUYf2D0SEFLH1HHaV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37566b32-4184a499-e75d-4cec-880d-30200110314f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e43b813d3b0be682f52f7fe4305104a4964efda77b34d186cc0388b2513ba57
Date: Sat, 26 Feb 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645900884
