Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706F57E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646412985;
	h=To:Subject:From:Message-Id:Date;
	bh=DFCWYc0i+DpErspGB1HOPSdHYiZeNVhlxqP7rBPcOUs=;
	b=lq2WwLHfFU4YK3Wi/b5mCEcn/BiC0vQdSN7F5TLcsRxRljnh60K3YlkHrkWS16rN
	zZjBpxm6iMfbMfNvthUoqAdkQKwQAlnjTfb9UOR1Mq7CbkmwbaPJ0pAatLCdpyP4mAq
	PV6u1jpw5KA+fS3nwSw7qPK0/ge1ix+Vrdw0Qal8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646412985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DFCWYc0i+DpErspGB1HOPSdHYiZeNVhlxqP7rBPcOUs=;
	b=ZRVkEVzuTKophi6GJ+w4JeBPT6ZoKDiVu2R1tqh2eHMy67BVsNUiJ7qmJ+EUSKDm
	TfReMYnCP17NaFhl7C/9CDWTog+fRK3gjFGu4Gaa0QRnJFBvwNd21nBht27tzDNj1cU
	lDlAIJOVF6tcZQ/AQ2XnIL2T7B44S3iRZERrUU/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55dc7218-27214623-8c73-4b5c-888a-0d8f667682a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c09ca0760386819e8dfd3818aa9b4d127e98d59231a797b5074ac61b2aba13c
Date: Fri, 4 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646412984
