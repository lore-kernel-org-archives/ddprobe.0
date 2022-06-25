Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95DA29A3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656184012;
	h=To:Subject:From:Message-Id:Date;
	bh=nN3c+svrNQPYL8fDi6pQDr1FlHz7tsVCEAJiv63DzyA=;
	b=WQdobL+/PElVm82B+U3e4qb2BEVVuVrhoE+bs7+KgzN5W5ZEDJFiL0zuFIaCd2J2
	uciDaOdjXDE+jNZKUPxv79jHAxEov+F8AB1wtdNO1ylhTrv5/2+I3rBGO7F+FZGFWBP
	Dd2NaVkQw+JVMiu9U2JiS/qYz3r8lOBwcSK38Sts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656184012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nN3c+svrNQPYL8fDi6pQDr1FlHz7tsVCEAJiv63DzyA=;
	b=YuSfUsXVsDZIoVt6cOxO0I2h1kqohiebdVV92GmNMQZNPov2ANEX7Il2LIzZkz/U
	si4D7HcWNOsWkUc0mtRx5hlg/PL9UEMhUhZiTBRtW6oAZbCkTXK+Ih6zJCzAlW4JBo8
	i8Mf1IhTAPrGVfopyoKT+xLZQWnU5kundzeUIdgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c427de9-3eed7148-9ee7-4dfd-a9fa-d282e8d56aff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22f6ff94d3a92884d064a22009694e8d22c0e39812faf6812097005160ed3f83
Date: Sat, 25 Jun 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656184012
