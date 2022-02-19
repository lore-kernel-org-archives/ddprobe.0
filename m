Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C05E5101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645250484;
	h=To:Subject:From:Message-Id:Date;
	bh=xdPoFImHwwNGoT1hUufdkF4UW6YLXc5UoCcjuUYU348=;
	b=Zi3owcAMtpyAyvPcsJvWyb0jKafFbxrv1OZriqRcKscRAKusIZTZfhuGmlfyMI/j
	huFiVJskHhZFduvt+mfZoet1gQwmVIJ9x46UsN5nGg0lBz62rK7sGxl4pfU1kHo/1/B
	8F4zvm9tfP7ze8BMOW1bfgaNq6KftEh5p5z0E3lk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645250484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xdPoFImHwwNGoT1hUufdkF4UW6YLXc5UoCcjuUYU348=;
	b=MRsdIX23wMx15DLt3S4KJKTKIV9ROAF+Cm5Bx/UOuiIyQ1iiF4JRvAwPlh5QvWQC
	LtD6AUDz5Pj6NePWvaNPDeWtE+jYIkQgS0fOdwSAq/3qb0wf+TLLLOb8WUmprpTdWx5
	AaxlWwsCx+xtqENFtjl5+hHXEL44TB5ZzAXvJxtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10921a14-10807b55-b2ed-4c97-bf0a-5e4541b5ecc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 378f83ff76b0753770d791271524e414fecc8855c255f0d4e5c8cda7f2f565a6
Date: Sat, 19 Feb 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645250484
