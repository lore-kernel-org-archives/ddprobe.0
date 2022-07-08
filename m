Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E26817
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657286212;
	h=To:Subject:From:Message-Id:Date;
	bh=1q2NZ0QK6Cz+7k3Qas/zqHTLUioeaZRcJx4EdPvfj5E=;
	b=bij8dRXo2eQJKFz9hyqYIVJ7M03+z/aMZVbl+sSW74JWDBGI7iLPuivP8Xta8bOs
	/8WGA8R8P7KNcnBzyRsthe6lakQ7n6If0PS9uZn/2OtGQp/Ki4cA8MQkenoAL5nvgU2
	Hw1gk3Jx/qjwhEQ8VbaTF/+zExfxgjg+2w9R7REA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657286212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1q2NZ0QK6Cz+7k3Qas/zqHTLUioeaZRcJx4EdPvfj5E=;
	b=iftlnXuthhCqrTalkidNEwDsscXZ45AonHHbMCyx9znpG1iDCEWPpxa1/KXN1MCk
	yajg2kPzlBdL8CuEH2ZsQ+lk+FIA/31iih3llencls0FTNpvSax5/NKWndufhSofvwx
	d4Wlp4T2c8NwrJphJGhJBAKVQmZbJNZKLm4Dwh+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ddf4baa8-f3b01eb9-7485-4ad3-bb51-cfd05d4707e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f750c8c95e0335046f26d8b151a684541ac7b2b6556ba2e74396cb2505d9228
Date: Fri, 8 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657286212
