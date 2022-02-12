Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6909211E
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 09:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644658848;
	h=To:Subject:From:Message-Id:Date;
	bh=YSgxF8QdJSpLkBk76hz0z23boa59Yo4ck6ArCJObSaI=;
	b=OK+K5WYfS4U34djCo0SYRRJEXhVDWsEOMT5/2jdbDiQqeijuEf1VM/sGTJJNit+s
	84k725Y1TZoFQ3pSYTL/fWLTYLSNpE9G3e1K0hnpkOmUTwYXW8j4Se+kVQWRQjd/gHz
	Ym/BMQcHExGAbrDdrTPtWtq84KGiwwguWhHI1pAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644658848;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YSgxF8QdJSpLkBk76hz0z23boa59Yo4ck6ArCJObSaI=;
	b=TaaypzSSg1SVHy+M0VpfrJQpGrym1AhKHe64J/bEYS7D9EGUN1rqr7BNxmzB2ifj
	ztf4MfNkoqStECryfLh8STgfz8x/QH61XmUjtDemJc6fnUirVPVPtzSLNURTuLCz0cB
	tYR9JHs2GtyRBwOCAnsl1oE4OhtmxODRq5e4BoBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed4e7063-7632478a-a237-4527-93b3-c001a2c35619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ac702a837a4f079dea4c831c40e7ce0ff2bd4d8d75642b5158a253849832bc
Date: Sat, 12 Feb 2022 09:40:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644658847
