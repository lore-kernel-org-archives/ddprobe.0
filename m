Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970D87B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654678260;
	h=To:Subject:From:Message-Id:Date;
	bh=A3t1zKZFjVJ4SDjZhCn6qedHnu7GVwbFzwIp5Q/u9bk=;
	b=Q9VpwgVXBzkbnitGnwxyUtEXJVdwz8pAAtrDUklXiRm+YJBxuLuw1N9B7YNgejPd
	eHyDU/A4/0PQomgv+xo2glry+3pya19ESnauAed2vnrVM1RWZ8Wzo5yTvzANsyGpk6i
	5z5n5xE1L8KTD8QfXkArHcrrJ9gUkvdXPtiqR1V4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654678260;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A3t1zKZFjVJ4SDjZhCn6qedHnu7GVwbFzwIp5Q/u9bk=;
	b=FlWVPmp9Aqj3XP1TDTG+sSI0Q4dK87Dj8Wugw3m1cs+YjYj+0J6tjWgPfOuWDwrs
	jCzNYLwvsUCM/Z1OfceNDIQVB8/PrBK+CyypULOLNA1k3mkVm8uClgh6Q0eFxK+jISS
	IzOOOswQo3mJhMwA9qZCLJIZXIhrqBOSeihMhgdg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142828675-ae83003d-187a-4326-b51b-0f7d8a74730d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a82aafd40ab95e04b828c731cd987447cdd7737a51f90ba5eb889005cd36faf
Date: Wed, 8 Jun 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654678259
