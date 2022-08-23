Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3337E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661280052;
	h=To:Subject:From:Message-Id:Date;
	bh=lHkHC/JLQCo+QjUAChHFpXNjjnUEnYsIwwDFgWuQnt8=;
	b=OSI1k3zaaDfjUX3fqVQgZfoz1YBTrxp3Qk3z8Ymsz0SQcXxFnova2ScIlr62EyCf
	8ZS3APg0YDwh/T8N7Fc/YyY+/GZwxKrGGGXfUCBcNefNQJ3kCl4cLIyhYYAEb8pY6Tf
	XCH4z41SE1WFNS6I9TXikY4EDAIsApSOFVMqMsBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661280052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lHkHC/JLQCo+QjUAChHFpXNjjnUEnYsIwwDFgWuQnt8=;
	b=Q2Brs1cRi3H1s19BfxT4av4Ext9WYkmksMVY0nkJAinQyYjKF5IhqJYJQ/OtMvrl
	GxGNBliweto0VE/tWdkffgEoLtgfs3uUKXdSbeIXZL7srm4jxvHAaF/f3zWV/YBgbtY
	+Y6nfhBM7BmX1H0YwgyCYl6A1C/p/8QoyUmnSVS4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc01e533-1be13840-0dfa-48e8-9f02-da3028f05e59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fda1ec3de5d6a2c9316fe557a592b71ca177f833986d68e3550430594584d16b
Date: Tue, 23 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661280052
