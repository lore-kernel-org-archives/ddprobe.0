Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51647A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647942684;
	h=To:Subject:From:Message-Id:Date;
	bh=6dPp3vD1h7RV9ElEUmZkEnX0qiq9lpFhbrX6azbI5mQ=;
	b=CX1IDGCkxYaeGDrzLNDSD1mWWmhfOnKjBNjniyVCAayQZuZknHXxkIvcmuQkFjar
	tFRQairzg0wM4V2WMFAzulpri8HQgic0gFT8mvxdQtDQFRaOTQwMdt4C5PXI+Nq+L2y
	GTpIFGEY8q2WPnQpu4yAzhdWgSkF7TvojOAcm0CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647942684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6dPp3vD1h7RV9ElEUmZkEnX0qiq9lpFhbrX6azbI5mQ=;
	b=SVFqjVFvcPrsJ+SXduuUVpldGATR38A77CtMBy0jeSRWAihCMNfXDCQdEXSl0a6I
	SSE4SQsMOtPLuY5L0M6vPejDzusL5o0F8dEZSAiV5kwppEH+taLQ+RY7/yMxFygbhUL
	30df9stC5gNDy5jduPTBbPEzrb1aX4TLEEIcDcM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb109d036-8a3c0c39-c16f-40ad-a321-58fbda2e5ea5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ead91d167e11582333349d41bfe7f560d03b3a089134ae235edeb2349698f595
Date: Tue, 22 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647942684
