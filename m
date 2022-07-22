Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82362C80
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 18:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658515612;
	h=To:Subject:From:Message-Id:Date;
	bh=y2xuu2GcpUh2+s6+EqKcbAwvj4tBg6QhAIrDI764yZw=;
	b=LxEQaFIYTtcRpnxeib/UXPGJMRXRR6+GSyAd3aic+LiwTIM8qpwrEKvSH9kQdBFj
	Zw/K99G8VmTGuPAHR+ltgGmMraaDeklplo9n/Mg3iXM/zcqg8ePfle67tFbHEET/adW
	qiVD7fMlVnBFCpHkQcAIADRlZ2BKEmfmsH5KGIuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658515612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y2xuu2GcpUh2+s6+EqKcbAwvj4tBg6QhAIrDI764yZw=;
	b=CW2gvK438NotO4uIHQL4+oIuctp73v0Xqfm8zetZx4iX0sYMsQJy/j3h+DzhehIq
	DQB22QYLMhegMQgTqTsr6nCvMusXxxnl+kG44LWnHgIaeQmGNqE3ZYR6GKXfeufRM40
	iyXQsJDAv9ox29cwumuuz/vgvkIJTmuKbqoNRH+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182273be25d-e6e179af-7576-4ee5-a427-8f38870793ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84df97bf3cc6d4be9c8beb8204b4984b259a921550290355cb30d14f53715c2
Date: Fri, 22 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658515612
