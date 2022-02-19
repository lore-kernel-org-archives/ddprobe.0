Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B9757D1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645310484;
	h=To:Subject:From:Message-Id:Date;
	bh=e4UOPq2xOQU6jly8G5FpRhZ05FLUk5xuI5oHIkLEiKA=;
	b=lRuhKFz3Y2LCxq9i3Q1hMahReiWyNN9ZIK3K3fPqUhQxGwXwy2ispj2Dl6CaEJPm
	q3inHPWAFFc6N7ROHdqVD6U851xkIAEoPdaK9nLrnMoBfsX9fdDc3H38rVOIlPKbqNb
	GZCWLEvJLaD8nOALKrcl6cv4seznSqmVHajp9mgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645310484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e4UOPq2xOQU6jly8G5FpRhZ05FLUk5xuI5oHIkLEiKA=;
	b=NglR/DYeo+6UwQBICpqtW+ICtaCW9CLXLrmvXf6cHqivpzTKyW3QpYWhhvBsbQDU
	4XRLPOSgy97Zj7KarYVQ6wd4DG+DV2aIr5unsxNGBWRv3jAdKTA5Pkoss52vggVF0MR
	gRcJsXT4u60sMuR+EgyQzK2+SGqq/anBLfLTDA6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1425a126-13182fed-6555-449a-99f0-af296309a08f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a234a6ba6c14ca5930882707254c43cc206a26e6b3eccee3e6bf1a298669ed1a
Date: Sat, 19 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645310484
