Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643F823CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647363384;
	h=To:Subject:From:Message-Id:Date;
	bh=K9auhHHtY3NJqF4UemIgO/RMuIHUkKEtUEyrhEYF8Yo=;
	b=Ssqc6rzbmIe/knEmWtz4Nls5VzbuPHy9nvHwRHAGOmWQMTql9af6MzzwJ3rNFDN6
	ZnmP4R8UExm/E+UIyeVDnRIzFjH7BC4bCu1xUu7XWBCN5uMIihtMVcjPWLL9ubgvkNc
	NifUF8ELG4cM+Tqly85G1VrAk4kPL0OUA+tMn8I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647363384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9auhHHtY3NJqF4UemIgO/RMuIHUkKEtUEyrhEYF8Yo=;
	b=WnOzNIUgIDRGZFAUYSQ6/Q2reRZWVKxRr1J+fErjS8zemCmOT0kuEsBYA6WYr2NN
	GVkZupw6f1lAfdAIZk3t880npYxZdBMtp7El5Xul2S4eMw7xg9okf5y7pglkidyH6Pb
	bvR0BkiX+M4HsAqgDpN4g/Wu2wkXiUTueao8BcTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e8265a0-b6b3deaf-1d64-48aa-9bd4-5851663385d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7144c0ba070071e272cd549c324b289dd45b657a8389af34a451a766d9755d8e
Date: Tue, 15 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647363384
