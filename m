Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B5C2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645822585;
	h=To:Subject:From:Message-Id:Date;
	bh=4iH8uds+a6ZsIcLelMX7ms+D8WwihTZrMDBtgZ4Kq8Y=;
	b=aIsHDfffcAGghDgNNIB1H+jnrL6IF/JDpm0jC7qZjeXW9pNd+8oi6jRBW4JGodWm
	it4ONOjjtG3ixGeDtIqrsHOT9mz+Lki+aIGINcFbMvK78xINmPbAWJcSdTsQwixxl+b
	D9A+TD+TyQAukPGZOaRAtj6N1Nyy7v1+Q2uRwbLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645822585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4iH8uds+a6ZsIcLelMX7ms+D8WwihTZrMDBtgZ4Kq8Y=;
	b=RzMJH8vf9FcbgBWkg4n8H2Nkq8mFqB6n1uZ86z4/vqbGRxm+2sjzk2Ns+W/0squn
	fSIVyQ08xgUsjfG4zNWY0r1Sw/zUOyVKjRyGysfhQUPtNGBHEGAo5dfZBeh+VuiyPpO
	BWtEZ72ndaDIRhnoJ4leAtkziaQ/PAbIJDQJJgVE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32aba834-d7bc8e94-1301-4642-9cfc-f867f7c82509-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9577904a0139e24a666dd3ba3eb7dc4099645e9b86d553ff89301c9ea558e61a
Date: Fri, 25 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645822584
