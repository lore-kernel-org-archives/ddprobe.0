Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963B436B
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646334984;
	h=To:Subject:From:Message-Id:Date;
	bh=qQjQOHZwU8m5V14XCKO9HQZw1/Teegpqa5xVYb1PoEU=;
	b=FO3EqEo4fCBbPD4mCN7fH+cf1JonDkHwclaWeciI9kc1L+7jxLdLaQmkV3guA8vc
	T3uj/c2bELS7PK7jua2Ij3ygSgkpHb1cL1yH7lUASltdUuIKib/fxVckgBxVnsoYUXs
	5W5xsyo3I45K5ef4LMRtC8P4fTi6qP6q6P6PWEj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646334984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQjQOHZwU8m5V14XCKO9HQZw1/Teegpqa5xVYb1PoEU=;
	b=lk7mj1s1RTlovcAQNIG8UpYJcuabEiJGoYjo8cTc5oBgvRlDzsA04aR/mJx9bcph
	I1qpUuRqGc56kluQg5PhBmAn2qnAnv4SXPwiECkSjd975rp/+91cWoToEwbzpmWu/4r
	ODRC6e4a0VrMOGV+/pzmtAFzkcSVB1rJndePrLIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f513641fc-61959087-07fb-4868-bdf1-a5f2e55b0fb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f512044503d0de06cfb9fba3e32492a9e7f947af314d652766b0add4f6141cae
Date: Thu, 3 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646334984
