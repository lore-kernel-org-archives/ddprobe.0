Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C0F3229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656371212;
	h=To:Subject:From:Message-Id:Date;
	bh=b3uH7j35WpQ8EH3+81GthpL56/ltbVaZ06qCc3xyql4=;
	b=dVrIFIMDxGTrIVe4ZgUVonnOuYr5YTRTzSDg+dKivOto+aD37JAhcX5NaJj257hK
	gvpZDxTeSpm/+wJH/zK0CB2UL213X/bWu0wQKLh+i3s669e764622sIBT4BS4JPvmcV
	NYJnTcN1IHUaBkacAsBJmDs/IwqZndajlauAtdFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656371212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b3uH7j35WpQ8EH3+81GthpL56/ltbVaZ06qCc3xyql4=;
	b=ajiakNPQrqtSggehsxz6fUPHD1F/u/yagbNey7KiqpXNTGzvMei0J47dT2MG85qU
	VnYCJFSENhHbBRSIWTGUt+l9tSJSKeYYbOFc53HwbYplRzjubRbYt36gQlElJkFNoBH
	83q1g5otWoQg7uSIPr2tTuBrsNNciiQ2GkeNUdik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a76af047-8671516b-897f-4428-8cc7-0acab201a1c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85d7d296e0dbf44a9d4d393a78c84b8082ac0634b39db46fe42d59eb48e880ac
Date: Mon, 27 Jun 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656371212
