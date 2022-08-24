Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB6E7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661320252;
	h=To:Subject:From:Message-Id:Date;
	bh=VSfvi5gqGsrDHoTz3y3YRXAaVtVrIHQG1WX8WMdmpcE=;
	b=CnIYJS7Nyy375Rx0xGrCeWKyNT68XCATK+6kEz2ZvdKVMBGXr/WZe7SXvWfVXrO9
	8TFX3NMfSBEI9FStqI/COvPvzJCRqFxp7JV2OBEhAGoJkOJnz+BUCvzWsDQMhMyk3QJ
	2ysIW1b9YD6/P/6yywAQmQWlJTqTk7yO5JDf9miU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661320252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VSfvi5gqGsrDHoTz3y3YRXAaVtVrIHQG1WX8WMdmpcE=;
	b=XBqSF+fXNmxvAJquEQLEHLv6cN/HSbN7PR7DqiPg1PJOEUpI5eKlBSeimJero1Ut
	s1245EKgig2QGoi3OI9NRweBC244BIAXjcl+3x+Tl65dpfPD0EZwCg8ncKBsOiS9LZL
	TQcHQ5OXjtO9YxD5MiEJcWuUXlRlmvI8Si8h2JNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce674c66-b1f60904-7cf6-47b8-bf23-dd7b56ffb48b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26189656d81850d6fb5f6f3bda959719b0f0e77d674cc455866e7e8c455afb32
Date: Wed, 24 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661320252
