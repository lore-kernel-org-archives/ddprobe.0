Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48B77E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647067885;
	h=To:Subject:From:Message-Id:Date;
	bh=yF7/p9/il/fD+u4Ndtpn8chUgIpe6onybiYtQ38ru6A=;
	b=Km9Dit7Qej4Ut3ihfrOyiZSNj0EZRCff6YzC7rNAJNP5QOC7QPIsoB1vlm6C39WA
	lch7dVEDCUmvuOXcbmYVlO69za/WRklCJThD705GSKf8w/AL+fHlExCsyZDR3WL3UD0
	7FumwPYZ/mrcD1jOI6+Kv4gAz8UCuOqqbQKn0A7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647067885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yF7/p9/il/fD+u4Ndtpn8chUgIpe6onybiYtQ38ru6A=;
	b=KgU3YOfVU5QyZK1mMjpqD70qVCnEl6Xji6rpZPK7n1ecBUV1ZtW3CbAhxnyWpSAZ
	FMtpSziw3l/oPrGIuJrpKH0pumvqd2PXmOWPraXtupt+MHKDtbeL7AlCQ5I/4H+uPlR
	hDYcZY4ZRH493f92rOaf23aZbCgVM+RVYQb0c620=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ce56d27-57099e9a-6244-4c54-b0f9-323dfbff0204-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f86a831e12bfd9090add41523bdfd898a186db600c773a595116184aba79e46
Date: Sat, 12 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647067884
