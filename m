Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9ABB2580
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655744220;
	h=To:Subject:From:Message-Id:Date;
	bh=Bdw2gEMgsjvJFAOwtDP5HWsXIQgaurMHl8067uIdCwY=;
	b=MPeOyuIjDf9OwaU1IYtKqiA4vXo63r8KSWS3TjndQ/BYMQxYaAqnEJmV3zao2iyl
	HSxW2RSrQGHiv38o7Q0gCQaTxiaiLAvElnrOpGPv9p8blyD60AtoQYawYp/JEwn2TkX
	AADGwEQTocfkeydTb9u4F1Wl3LpXSzVFrbxSXUO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655744220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bdw2gEMgsjvJFAOwtDP5HWsXIQgaurMHl8067uIdCwY=;
	b=OspOHYGZKin4GLRDVbY4OOdRDMuyJ+VTr4OMU+Tb6ZpyPlgmYrx6tbNT+MQwSs2K
	9R4Rn87q0G4PuV4VAyFYciuEFReyis/4cZ4LWN4L+aH+sQ0aYU0FEx/DhBjwfZP+HFY
	lsKS61aLcdi1pOqvA+fCDspvBEQflWamJ/ASi3Cw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181820bc8bb-3145a181-ee06-4220-bf38-a931a0dfa566-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56dc35c9e1f6d98d862e22bd7da697c893f66ac19150d64d517f7cb86dbc66a2
Date: Mon, 20 Jun 2022 16:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655744219
