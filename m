Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD80B2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647480385;
	h=To:Subject:From:Message-Id:Date;
	bh=gtQS97swETD2hPv0Y3IglpiWCcER8tlpM1tp5VuYp38=;
	b=YjsrkBq9MxaRPSNQ2lkVc4vxJUKkJyon+yXCHF3bRENWgJxRz6DyqVduenHwq+Yj
	goB24WZ5TbZZtioemfLeDyQOAFBXIKPGhTfATG5UqwycWR26TbW5LuFUavyQXf7tTsi
	hr1QAtjHSUQQ0UFkLA7I+AGgE9FLfB1U1vmRy7Z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647480385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gtQS97swETD2hPv0Y3IglpiWCcER8tlpM1tp5VuYp38=;
	b=eQkM9QjH/JpMYm6r98FjGPqE4R7sg2MceinO7yN7Q59D6UWoFVEsNHQ5YA0+nc/Q
	siJCmWz+SFAzf0pS/QOfbgjAj7pMY9zpZ42XQPLFSZxnL8oSjLij08ZsAC4Hp3CJ6y2
	16WGze+B8PJVrDtTgtms2hyPT+Yde3Un5VIy1RVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f957bad06-b7b646bb-47cf-423d-90df-22036dc818eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 481c47032382982d46871bdccebfca4a9aa4b1516948b81b46c7657c978c7226
Date: Thu, 17 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647480384
