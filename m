Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4F638C9
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646636484;
	h=To:Subject:From:Message-Id:Date;
	bh=o1kzAsNqapYZSSJvCsQToCVWdkHEYyLj0IFSZoGw8HY=;
	b=UMmEl5uzLjW3FNjW0dFbvBTbjTmIXt1r9CoFsMqLNzW9d0DQnDFTtnF3Mi/zIbDH
	BNOWU2qPxbt07QZ9XsJG4wQoOQ5CWykwd1baJHSlatx6a2Z97S7zVgMJgHh4lusJbpH
	r9HbAvpVxZn/WrM6KKY0V/qS7OZ1g22aGef2V57U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646636484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o1kzAsNqapYZSSJvCsQToCVWdkHEYyLj0IFSZoGw8HY=;
	b=A684lxsm1Sik4WPAHt+BWYJIbICbxhHysInvaJ7aOSZA0491F1NSaOkhzdS87aw4
	WwCY92w0AZf3/HVmQVbilAdNUOO1X2Uvx/L2lPsZbdzUDJ1v8XZusOrEQk6g3ZKg+XQ
	M76pPCGmL/DLTe/vJ9he8IRO06sO/bFIEY6jJFHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f632ec895-9613b77e-71c0-4450-b72d-877dd7ca1506-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4af1eb922912ab4fbd1c3e75024c4025de5f2d8c4aa3ac13c371e5115472fc38
Date: Mon, 7 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646636484
