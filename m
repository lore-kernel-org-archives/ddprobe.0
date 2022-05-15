Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EED7A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 13:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652621219;
	h=To:Subject:From:Message-Id:Date;
	bh=sj+Jcb4qKZ4f2bUxNXNIyq8gS6bbPq0xZnOhSV/4nAI=;
	b=R/fqhkydv8qq7pJ9h06MFX/GOthLA01F1XIHQNq35NXQNP0uX/TUNsW4/uf8unXc
	9Ln0CNyXQLzi+FM7Ikrl5SDiw0Iz+NdnSKghyNrfN5xUohYL/2g7Q7Nj3ijQqxSX9l5
	KkWplE+n6wf6AqyCJ6/IugPZva5rhpLe1bSMM1lg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652621219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sj+Jcb4qKZ4f2bUxNXNIyq8gS6bbPq0xZnOhSV/4nAI=;
	b=LcI8RAA+tOay5974PKevRZ7EZAgrqnY3Fd5dLaIB3B1xnyaraH1xRU2ghAdNrMD+
	Ilqgy7/X2q9wzvCF8GLGPoM1LPjXJR2ZxW3xCPW1mthTZHzW1qgbyoRy8bHXX2UqA05
	eZ0kFQl4NuwhueDXG1EPhzdnMRN2egBNKWVbeizk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7e69618-039d8e24-839c-406f-af05-125572616755-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78f999af5ba9180ce85132036feb9aa89a7796e9084dfc1c9b9a41feeeed53e0
Date: Sun, 15 May 2022 13:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652621219
