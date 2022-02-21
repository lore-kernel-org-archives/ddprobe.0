Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3D533CE
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645468584;
	h=To:Subject:From:Message-Id:Date;
	bh=r4ZUPVfiqx0jCQABjeyH0MoolUZO7di/C12P/yyqZks=;
	b=eZVKTfFxNyVfP8ahD9qGWgkniTd99jcGWev1S1gz85bj4OC+ihyVGYoNwOPk9QdG
	QmtTsiHb3qjX8wKgnKU9Me3jAlnHI7POh/sMeEQ5bhzqDuWLBRtlcl2yEV+OUwP2Fuu
	7sYjDtY1NwQ7lwLvRRO3i/t0YtQWFW8NemGTs+XE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645468584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4ZUPVfiqx0jCQABjeyH0MoolUZO7di/C12P/yyqZks=;
	b=Rg4bQVq3pZye2KHpmNp3iIaUeSyvEzF1rsf9Dm7ZvikNWiAh4yt69nwzk10ZWE7Z
	2TiRAOSc/xq/FiqRRhtR+iSsJkKa94qmN3GYinx51fUt9pYZjEh4nHlnBD+D1/1z7Vl
	PHmx9WrTVWN0Ne0kr0SbMtsVokSlnK/tEr+m8lhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d920b0a-74245f89-cad7-42dd-88ce-5fab994c8b3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e41a09e92a64c26fafcca3e98058f927134ff54dff439ae79286f1eacb5bf3a9
Date: Mon, 21 Feb 2022 18:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645468584
