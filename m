Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1712015A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649145478;
	h=To:Subject:From:Message-Id:Date;
	bh=mBnRsdbZtFLRpEErU2h7lGoYjhg+QU8R9qMyM4qp6cY=;
	b=KMCXubFWeRGobTufxlz/aS+OaDqm9ksP9KIUczkwy88m+7bPfNPt15giyCroaEnG
	dEkTNjB1mAMESSfpUzghOvi7EtEHXvmdmBiOay/AZFrkt5uy6ZmizOtxv5XnEvestl8
	PvA7BTEkWYjfUxZSOI+Di72lNNSI1lNb8In6xGxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649145478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mBnRsdbZtFLRpEErU2h7lGoYjhg+QU8R9qMyM4qp6cY=;
	b=d+nm9uM8OqknqtbMBNbk6/v/OqAWxDwQeWXejL9P1/uE587yowtBa3OijLeodtG7
	rSsXX9Ldrue7pxeE+RDExtvL7FOr2QJDiuX4sBO7AlnnBnOxCa0bdZp7lZPUuLPgX2i
	U6nqYtoHBZB0AjMhEVmP88ZO79Mma5W0kYkeimMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff8bafcbb-430ba905-5a6b-40e3-bcad-7f89fb3a6343-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e69930c3626399f8367fb48917d98c48c82aea6dec4a39876fb7413501ef3228
Date: Tue, 5 Apr 2022 07:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649145478
