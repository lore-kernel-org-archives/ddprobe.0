Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231A36001
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657044412;
	h=To:Subject:From:Message-Id:Date;
	bh=C7ovu2RKcGgr21Xwc9gh4E5u6xrpVutxMG2ZDd//Z6k=;
	b=jdsfzQzJoUg1oP8UZPWqKjs8rvXcovsgJXxKeSlHLa41txMijesdOfXl+a4Hg8c+
	xyIX5YHdSQ6xUXjKtLqnA8L+w1Sjl9Ec0jwfBRENkhyFVEyGpRNY7p8TlTDblFkG9zg
	29dG7eHxHuTndWRTUAn1QIUkjSp7mpIoFXesyVk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657044412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C7ovu2RKcGgr21Xwc9gh4E5u6xrpVutxMG2ZDd//Z6k=;
	b=Vk8xCUlMPN0e7+3Xi4a0dPVbWcFrS6lCvSoc8Go0iSdD79IVDsysCKFlZfX3lCVF
	c0qIs0Aj+wcj67iGCTwNYddqW1nMN4cUZ8mRVytNfLEX3svsGdPQI1kW1RewVU0kQc6
	8SFtz280DvxMpXsC2ydVT5tw1u1moN29hFtpiOS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf8b2774-e1bf1a93-61b1-4350-adf0-ac4303cb6d10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbb6c8c8901f78075bfcdcbdc63c0b4b28f50633bcfe5db4a14c33e4771e8021
Date: Tue, 5 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657044412
