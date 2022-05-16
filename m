Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F3A2F49
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 23:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652745479;
	h=To:Subject:From:Message-Id:Date;
	bh=JQj1cOTiHVkFZqoAXsxWMHfvD7B2T0zlF++Hy//PZKk=;
	b=VGlYt24gq36mzTdc5xyYYjYNj2Cd9ylSOYTAVeCIUvih1j7ugZTpJU3upRbClyeh
	eo3KzOzIMPFDSAJjARi5fXSp+xUHpJhzW1Ii3Wv5i07aqFbNY/WDz6qozsFc/QQcynJ
	KWhBT86qwtQFEftouNc+sdCX6MWPNw4xzp8QjZB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652745479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQj1cOTiHVkFZqoAXsxWMHfvD7B2T0zlF++Hy//PZKk=;
	b=DTgpLsbo0okPUvgRXHkCpS4cc2lqbT6Ewazx7Y2bPUI8rNiVpThmWm5qShzRKGnf
	b5oB/VW3UQivAZGy4rbSuwemc0YzaY89INoc9lY9Ugf5uusNmLec90MSO0DLJFfzTQU
	0LeqV0dQXVphZuOnIk/chRBySgrzPVgRozOomuXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf4ea45c-e7f4d668-6d99-4f28-9a4c-b2704106d66f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b5b714ee25c315d9ffc52922a8c97053b2bfbbfbbca792cc598cea3879cd32f
Date: Mon, 16 May 2022 23:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652745479
