Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94087A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647931884;
	h=To:Subject:From:Message-Id:Date;
	bh=oowaz4CZZlJQs25coVP+FccQASSBw22TTUYf5jWXNyQ=;
	b=GrDt8UP5UX4OyLtfmAnu+RwpeFJZBmrWbbVglKeez8GhPw5Qp9NsY1QKhwnV6166
	HjC3s/oPkWvXmerwiN/lDWdnlCvWAkSj81nnoM2cz6Yx4F1FwVyEuVKz2Lu1z2fbxFD
	kKbCZ6FiI0lMVx+3XnWyzHG/GmqSqb3CMWx9GANE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647931884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oowaz4CZZlJQs25coVP+FccQASSBw22TTUYf5jWXNyQ=;
	b=PZNH79jWzNxO09Yt2uH9WzCR8awvjV47CVlrA4bGmvIYEwShZEqbwUiKgWyAnD5L
	WoMpfZeMrEKQ2IBHsKNvABDs/RaPUEVrRRKpSlm/1y/PEcV7q2xj/rb4XmtDGnEkC4b
	4d/DOpnFKMZXms35k/PkoE4NDXQPktbrvdgKNjOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb06504c4-bcc26632-4cd6-4095-8f5a-61bcac839f50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25b94b24cd4e35aa5d4a4179f3328611ce76449d427baafc844cba1e4e98aafc
Date: Tue, 22 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647931884
