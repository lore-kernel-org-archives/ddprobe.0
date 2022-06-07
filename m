Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B03D15A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 03:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654574279;
	h=To:Subject:From:Message-Id:Date;
	bh=aAsEdYqFPAVBbQD/vZMPWZiZBShyeTgVPGy7ja2xfUY=;
	b=fDM2q6SJOLg89cXvN60jgQva/x/1Ed4uXlpJqojyvr4vH/tepfwy7L+1VupSwx7o
	Ojf0rLx0L2AT0zV6szqzpWEWJKNIqItep9UkLk75gAytY+Jmsey/MBWtCzssjWsGWvU
	b9NmsXUybkGBrW7YyvIJtrbVcLG4t0fc65MvaHRw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654574279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aAsEdYqFPAVBbQD/vZMPWZiZBShyeTgVPGy7ja2xfUY=;
	b=Wjgi5oHWNc6FWddnWzn8gaa9g7eOxiRFJoKwMSeHYvirJjzlvPqwSm7LFjlzPeYg
	/ZJ3cJBGj6VA6oe9JzK7QM8GPmGJBpxy1Gn+PVWxDk4wptnTJ3t+SYuxkVtHYhYS5xi
	+AK3P+xpQiWYA7x31OCOOJaQlPssRVlf9FHGoCj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c4feaef-af870d66-37f4-4497-a4f5-1e46aec28d4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34cbe62a8071fb52068ec6470ad8e528f3ccea00aa428f5611e51427cc5a8cc0
Date: Tue, 7 Jun 2022 03:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654574279
