Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866927A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646235084;
	h=To:Subject:From:Message-Id:Date;
	bh=oSxFacuk/38aaHVhfU1kbw6ginhP/TtoKSs/gP6cm18=;
	b=WJVLZ1nlCj8Fd4IhiBPOFsBOihCsN+DUzaEHcFgmt7aXRQ0Ns6R+CElG6+LhzjhP
	QyVsY8StlSUpSBQ3ebDwTCpTymSegyx6H0ulb6g54hTCmKl7BxMUaLIFBkfzFD/HtpQ
	PJHvfbTH+TnvtBOqEz7l+l8Lpw6dJ2g3NMid1Nf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646235084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSxFacuk/38aaHVhfU1kbw6ginhP/TtoKSs/gP6cm18=;
	b=KwXyiFrhoDLDWCv71OFL3Iz+P5Jl2h+nZCE64GB7Ro19zE4GKQfFspbg6Q8/8VCh
	H3HP7cy/xkrQGEVYWdnZhK1AKvcdtlUcx97rGPqpxrtQDMkJTcbS64pMLpoyl9eaKqs
	CtrliU5ZexW8oDefIlft37QyauGzs58UjvLRv+0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b41e7c4-eccd2de9-8981-49ea-b0b2-e9614e5e0934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3b133a8b4564da0bd7c67ffcbe95b61ced22c0fcc0c965ad743eaf50541ad80
Date: Wed, 2 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646235084
