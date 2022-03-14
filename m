Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0818EA2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647224785;
	h=To:Subject:From:Message-Id:Date;
	bh=AZ5cFmEmVbeeVd/muAKXonLrKuNHOh8nuoyp/uH6RlU=;
	b=kb8BK2ES/27ZXa3Aoz2hmXvDuAikRZwasNMYGjhNoFkOcIpZQiZKjWnbPexi777d
	GgmyxFTM2/2z1a8cxeqakPVjRm6sF1vLBBDQApNz85yROhtwG1bCAkQXp1X2zJ5SLTD
	asfRhIqJvFl3BKP4azMUQ5KyjmE2JvkDTss4P2AE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647224785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZ5cFmEmVbeeVd/muAKXonLrKuNHOh8nuoyp/uH6RlU=;
	b=hwpObLCt+1QWQm5CiImNj1yiuadpe+QRL8g2pamcbrN3VUouyTWOdpy4pHljcdBb
	BoeJUPnGSIl6nmZrcudRd5y4aDOwqgizy7ifVWqxHpIrZFCziyvbjBeoW5nfoSGmRWW
	tef2Lw6GwnIzA4g/HnRv8+P2EErKTQk+DOaSIW64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f863f8760-7f570934-8894-484d-ac9c-0675c5df363a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8c2a64ce9f77ac59f24cbcc9eda9aeadde4f3d9702070b8f84d7fdec8b4d359
Date: Mon, 14 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647224784
