Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80B4614B
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647980785;
	h=To:Subject:From:Message-Id:Date;
	bh=wLraQaF12LeAKuBwtLja7KcJQ2YvPxz0LT5cRrqTack=;
	b=UbR5RfjcbOw6dqj2k2bhg9koraX+OVOBM9C5DmOrFBUku9iSTRk/C6j4xha2n8gj
	99uGtq37mI+sZBZ7+tr2FkRNZXeyUNHJ1qSVXVpgocBF2/60FgsPr+7hVZ1BIgHmqGt
	58rcYAxo9mz8gWQR345C6phom172VcUUXc47JRJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647980785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wLraQaF12LeAKuBwtLja7KcJQ2YvPxz0LT5cRrqTack=;
	b=Nukgv7j/73DwtxpsSqjio9qGyvjAuLJtkODmnLQvPnCzw/0cXslR4ORNzcouYeEc
	wZ2LS7SpCkA1jZkMgnVwARGCUS8s56jAxp6BexdKsZuEdDJyjRkEEFUjylyvXvIscA7
	cYDBCSEnuNrPEyB+Tm8pLGDQMFzkYC9nN/raT83k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb34f2c6c-35b149b3-8a62-4f93-8b69-44ce18f31c55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82f86e016b9a506e07ef637d1c1a304a17fefaa8a2e4f698c392cdd4b523d34b
Date: Tue, 22 Mar 2022 20:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647980784
