Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA7220E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645469785;
	h=To:Subject:From:Message-Id:Date;
	bh=1IoulBcxZkcjZX/pXCWCJJiCl3+UBJd5XM1anqEXPwE=;
	b=VIPyt0eu8qDM5adpvcFZijgc/jPhvU/a5QnbvbOgOwsN5YJ36szcPtfJedt7EsE4
	vBTJRd4A+koCYMDbScg2gcBbY5Qq33GAftUK5K0M/MrWlyS20dBriEfCYY3l9Lbl9pj
	F4E2EHQ63NfDudJfIFaVGfIe4lW1+l7ZJey2X9yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645469785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1IoulBcxZkcjZX/pXCWCJJiCl3+UBJd5XM1anqEXPwE=;
	b=IyEiVa4Yb3qYR9XQp06YO2yER+r+v+/rlf+Rj+rK6gMT9GzwvZkKXBGXUCYasR8l
	zt2V0fQbvEVdRN3jzYRROA6HTgdTJ2uOxIvsimvInaWnEtogNFXFqz6I3Mf796B3CAD
	DNk7g9aNNnKQfycqK3lZOG/WuhijmHi7c/UunGqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1da45adc-f7d4f6df-eaf3-4de2-80c8-6dc5c8d9ea4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcca16f3abe7cb9a3beca4f60877dd83c1cee6f5dd061e627b2a89e572fafbd4
Date: Mon, 21 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645469784
