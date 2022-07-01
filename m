Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36956EC2
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 00:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656635812;
	h=To:Subject:From:Message-Id:Date;
	bh=qNbbP/UZd4cdc0ANXO9hrt7IShlSoBLYVyHeGWbkkBA=;
	b=doZiDQiTJN1PuGDe5SLikuQ620L3tiVWtzCgNFHDd1ue0/r/30l9co5xNBtmjbm2
	AAGeTxBKAe4AOjbZvG8a8zxMG9XSo3+lTm3LXeNAE9tr8HL02uk9KNpP0LYa6zvi/RD
	fMkbbHVpr9wGxX0I0pD2JZbgmtkNrAXUMLVro45g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656635812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qNbbP/UZd4cdc0ANXO9hrt7IShlSoBLYVyHeGWbkkBA=;
	b=SRFxIvMKRt/tK9VcBsw0AjASCZNKNybCMFX/IrgLXg5K60T4i9VaMeaK1bogDTIl
	+c8uH+umjJwobQFzdX9I2Uph9YbMc69iTo6pTbwHuAT1Chvzd8SCRo3T26JRGfhZpqX
	ly1p5OAjbq3ItUl8OTCxjRGshGwA0VZvMNHApJbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b73069d7-a25528ef-4ccb-46a1-8287-cf0ca0619d82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc5003632265ec76602c184bc4bf08a5bf9f594dc61f5f06299c1a66ba8f2bda
Date: Fri, 1 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656635812
