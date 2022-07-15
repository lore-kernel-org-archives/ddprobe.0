Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B797A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657876012;
	h=To:Subject:From:Message-Id:Date;
	bh=HStLX7Wd/Szbvd6I7RHJ7ZwsdZFPAgUDm7lAN6lTDI4=;
	b=Hgl0P+BGCN06ERkj8GOMkFjoNmV7WylybjnaPeGJdljwoWe+0a3OC3QqqN6s9drJ
	BjqGzQPO8sE91LeHZX+14QR9qSQ0Slux7VzfBx0Kyl2jMukzTk3/a5LJ99LzcDk22wd
	i2lj0fVdx6x02gI7+iqZNGcE8NZDvuiW+9WfLito=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657876012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HStLX7Wd/Szbvd6I7RHJ7ZwsdZFPAgUDm7lAN6lTDI4=;
	b=Q+L8kOo+ktBEOL2MrZF20XBNQDHy/giFBRSmyTIx6Eyn3JX/ESQ5plN+x909twoT
	e6dRPiqcKG4IpkqZ1mpP84W34MvUFaSjT7lCzAUToBV2zIF6XAm5/iAgVwZ6/80wSsY
	+h7WUFYMpCKE6GP3HUKyrAOxtRXDx8Mpp5XiIxSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182011c5d47-b06b2720-0554-400c-b9dd-d2bd651cdf30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7960c4d50f5303f4aab57727e195d3ca822b949da7577bd3f5f45ac23f260c3
Date: Fri, 15 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657876012
