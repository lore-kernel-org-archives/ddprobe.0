Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409277A
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657621612;
	h=To:Subject:From:Message-Id:Date;
	bh=bvrXkYwaw1ocVcQx6YUDRKO6YrWPqiQG6tO2qURkvLg=;
	b=etno4pNJYwqevrFce0eJU33koE5FLXnB2YyOhCMJWceQz4Rpy83arbBKUouoBjUk
	eTBoXEaCz4Qp5FCPCW0Mlp/vsm0y1DLf9ovV6m5BZsTfHB80QglYFI+RY/X26qsucKI
	+gOMws3xTCN1Fs4TN7xplJgECwvn3RW5fDIpdAhM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657621612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bvrXkYwaw1ocVcQx6YUDRKO6YrWPqiQG6tO2qURkvLg=;
	b=C1ncxTvRuiLgehzdXj8sjlcOaoGPZRh4TS/DTDN7w2HzVJHcFCY3PUe0g9P4e7Rm
	4JQ2u53xLNqGL6OtJXGiIK5G3yS98pbYdUY5AwnpyYqhG2dSvcczaf1ioqli9jXDc6N
	0n9MSP7WZc3gr3/S7+LLRrCOI6/yxqWiqTVnRWH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1f286da-14dc3c3b-c922-4b12-99a3-159bc284c72b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 363169b754a5fa5bb4e19a2db7081e5feb0bee0fc42876699e6c9f4765147ebd
Date: Tue, 12 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657621612
