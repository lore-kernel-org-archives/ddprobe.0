Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125017D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 11:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644666027;
	h=To:Subject:From:Message-Id:Date;
	bh=3m8vzHWFc9beFC24Y7/VuzjPxFG6+ws5b/lG4V+SFbs=;
	b=KbmmRBhZRhwyfmB1D/lQS5wZJq2L7jRaEpOpwwtcYw8HgUEQModxv4a3IHU4xs1a
	MYuSijfc/vQWXFv0zoq5Sa5ZwE4IKDpANuOLOyRqJoxMzbhi4P8LSJ9GkItkEVmMwQA
	rZh3KOItVbKbfHOOizaFiP/EFPeqySwcTqkiLaWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644666027;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3m8vzHWFc9beFC24Y7/VuzjPxFG6+ws5b/lG4V+SFbs=;
	b=arI5TsfAKhXuH0wh9fHhdfUBPwd1B2mhztDfWrfWf+mHI8gyUVYEdjSkc+ZHVjBn
	knZHneFDZqYwcwpW6ZM296Rs8dVKmK5txHk3SiABC/QyrIRSv4wqSIMjOONK/biWS4N
	suF0u6T6boDOxtxVvZ2nlPBTeTeGp55F/kVCRycU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eedbbfdaa-32764b5b-c827-4112-8620-f7300a261fea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edbffe0c15e80586c9e3673fdc309e493015c8b229eee8c919cba2867e2abc87
Date: Sat, 12 Feb 2022 11:40:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644666027
