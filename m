Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7391846A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660086052;
	h=To:Subject:From:Message-Id:Date;
	bh=Ubq3+qtkCxLkZForQkEbkhdvnisJq25eg93PPoLybi4=;
	b=gWc05z9ew4YKInSuWyYr/y/d/6UzNvQxyUhbwxv4e7HLtZ8AwWSa+qGMF/WHJs6d
	mDt4BLNuSsMk1beNUXlZJUvdVynsj/vYa5yX3z6vCvK/XiGsM9zSmAR9W4ploLlObC6
	HuBahmDlbePP6o9mA3Qxpv2PFW0EKSdGziwpiz9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660086052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ubq3+qtkCxLkZForQkEbkhdvnisJq25eg93PPoLybi4=;
	b=FS7EIKj6MQAwKRjK/Gid2ASYwU5XNoqoT9b6VnSdgpAHAszP159kePt5nxatDdMO
	XLJ783wT37uqXarM9MYySX7myNHJ7VNj1hsnrWbha8+Xajsh3cINJB6Zj3vBGeK3USB
	VHQ8L61ytHIFR9aAAoMK758/9XvXHxqzgIG9fhko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284d6e71c-6af3ee0f-88b1-4e33-892f-72626d131c2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc40786c51c40cc2db1b9ec521fde699f9910a180918def52264202548f99cd1
Date: Tue, 9 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660086052
