Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E38136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646460085;
	h=To:Subject:From:Message-Id:Date;
	bh=go7y6lprtfp4ubEHSCa4JZ0Slx6DQc2nNkOZtm5RO6g=;
	b=QH65rMgM6tAjU0q0Upxv5GZWsejMphf+31xbgM3fUFWfED3OAhrkuIdM7rrMSbud
	1FWlcELH/v7VCcbV237htj3qj4CFbhK2j9xzzGOwuwUc2khT2Fubl51JXkHLZ+F4/JC
	7q6EPrrFGo7pNduEU2EVACA7O/CnBmCXwnbMTgR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646460085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=go7y6lprtfp4ubEHSCa4JZ0Slx6DQc2nNkOZtm5RO6g=;
	b=JnhYj9ZUofIMs3cFQPx+vHgKCOD7MrGsuXxN4dYr3XrDLwr38/BrgfWESqu8Z/Lq
	q3HgXB0oeEaxmS7Ja9YHv12Wrp+SxA/xayVZKwpnceqvuMZDTbky8YvY4SAmm8TM6QM
	k3aHjrsxGf8ZY73A1p0fdSLg0qyNWjRr3l9NIMQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58ab21fa-1c157e77-ca0c-4a94-a58c-4c09a9809af1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b94778aaccc4c05c89b80564cf677f76d3bf5b415b8830960c81a683c51967d
Date: Sat, 5 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646460084
