Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2CD4434
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660837252;
	h=To:Subject:From:Message-Id:Date;
	bh=TrFTfalzTagVNmGfcF7A/LyfxFvSXA0Q1pmgDf5FAo0=;
	b=cPvckid9uHTp+UqUQOD43tGQ8SUG67488UIpuwPJ4/ohS8+LefOjW5JJ7INLH6ML
	7sXN2lpEgPHAmdbvRUoExXh7H8PFpVgNbmUWV7VCzDuTw1B3OqzEzjND5MXBVqRB132
	i7z7+gkxWI7gHytF/YYLQhqVSdzwmBvCIUad5klg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660837252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TrFTfalzTagVNmGfcF7A/LyfxFvSXA0Q1pmgDf5FAo0=;
	b=bZ5vG+EOp3yJhEJFl/mJjOAJF+fcni7G12lkX7cMSMTRoSXznAoTfuKnuKgnZSCP
	OqtwioudMBIzcmOYdpZlvd4GbL4m4EmJB+sI1hggK6iw8f/2fk51D6PlHFbmNUmy6o9
	nJa62qEXSr+NAd7/9lT0O7JX3YB/+bjFh5u5d4ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b19d4dce-5015b1ae-3f72-41e6-9efe-789566e5b846-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef18052c192df872bc3e19f34fcd947170dcd36a3140ebaac4b29b161bcce31
Date: Thu, 18 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660837252
