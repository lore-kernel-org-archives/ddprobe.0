Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09C38E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646647585;
	h=To:Subject:From:Message-Id:Date;
	bh=ahlI240TwMkupl4Q2YyYBhNWSU1hjHB4dpUcLfuJ3Uk=;
	b=EAY9aa+YgGWAuf/lsRbs84TtzyrUQvL6vFBEHBDd7RWnmvy31XO+5CA7xIZrg6yf
	HgF5DJmjxWsTfhNaH7iyCE3gjK9mEu83NUqSS05zsCTVohnIbnNzvJyQjPcdvDoz/Lq
	o7O0v/a7yw3MAbN4lhDG+YX61YzxTPMkad1qnOJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646647585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ahlI240TwMkupl4Q2YyYBhNWSU1hjHB4dpUcLfuJ3Uk=;
	b=E/2lPSXJCbDhE/nqjSdotd1kLHUemO/e4a9ispuRgidcdOUjL5e3iyzog0bp5rI/
	+0jFK6sNttbLzl319lWzXkU6O/boZIv8xmSqdVdrg8m72sJxzGX6HaWQPhoyIVbG3xE
	1NpjL56kW5KBtP+tpkKwI5xepKKilb/0GvZX+rKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f63d827dc-765f3555-25f6-4dfd-b027-323c047c05a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ffbf37c1e7e9a332d60c88703613e626b0ed8d6aff867ba70e7754b688fbaf3
Date: Mon, 7 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646647584
