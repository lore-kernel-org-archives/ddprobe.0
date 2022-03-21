Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853827B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647823884;
	h=To:Subject:From:Message-Id:Date;
	bh=UkHW2wOFkD2+QCUxYIVWW2u4R/PDmUWr+9LCDjQ6AeQ=;
	b=D/qLWBgUp/sPeRpuA9JFuU5yQgPbkIfxXFX7dvqnZV4leuZ9O2NYkZGEhXF5Kd7p
	EWajWalX36GoEo0mLb7gGoy4XB1z3qZO8GG3eViwu9m8135WRksS6veHck8uxGyH5Ar
	ES/J08j5qNuUHoHrn/Yv3scsr5rH//nq7r04XJg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647823884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UkHW2wOFkD2+QCUxYIVWW2u4R/PDmUWr+9LCDjQ6AeQ=;
	b=anBdNFO904XWTXYh52jI1JKqATcrp7KXjj3M1ASBpJip7I8ZzAm3VhhRacN7iLG1
	lFor7Gnlni2tkVTEstqmv38Ff0rgAwRb6eLtUngRGe0OcODYmE78B5f+BS0uZEoyiHS
	uy1ecJL2lwd+/l0N+E+yXer+giKKyrb+p47d5U7s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9f511c2-c9f79f6f-4bf8-4dfe-a2c8-8d7aaaae20b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 036164f3745c7c6407c4fc11eeb883843e1631f51a89af341257529b5f21bf4d
Date: Mon, 21 Mar 2022 00:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647823884
