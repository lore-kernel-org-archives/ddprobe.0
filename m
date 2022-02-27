Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8869F7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645920684;
	h=To:Subject:From:Message-Id:Date;
	bh=KUNvRClmz/X7Rnwwi1HfKLwHj/Wp7/mKfJHE8RJmldo=;
	b=cT6+rQkS58P2Eh9779dcijLIW5MQLtbwnW3JRcoUYAIWN6GafDeEhPEnu1HcUgrW
	3N7K7HduWDrwRBmlOynWbXf1+xEvyJBHqE0+VcIMxow7/tspIS/BwOL/2xoPjUQ1uyQ
	dhBUckHkDPjTOrM3FM/aSuYtK9OnXTGH2Do6z45w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645920684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KUNvRClmz/X7Rnwwi1HfKLwHj/Wp7/mKfJHE8RJmldo=;
	b=gJgU6HGoy6OEdwSj0lF4HnVYF52kcaasJiBy0g9/nn78+Q1uSOIUTBkMJBKO9H49
	Ojkh36OSj/hsvKEPRV0HJThXUpVm5wrF7RCfNHQva2MjRIMHcgse8sJvlDumXkyeMy4
	Z0nTsfWLIERJgP9I5U+gZ1WuvsCIjYTTWV1CgP6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f38848b01-32944360-299a-4c41-a5d8-feb3493a1ef2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373648033cb9e169f9ca7b22251fe32e80c693223a7b2b838731c3ecd07ddec2
Date: Sun, 27 Feb 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645920684
