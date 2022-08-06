Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FE41107
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659772852;
	h=To:Subject:From:Message-Id:Date;
	bh=Ea/19zL/deRoeSTyToleRw4hVMl+JrloIwG34EEOGWo=;
	b=ehp2by66l+zZBYQyqcuiJtq0mX5ZICRw30t1ijrgWKAClD6Cm7v8J2jkww0csU+5
	PB7pnNC4gsFwx2fMdoqVOOpsHCle0yaBLgjHvDPTYT+GcCP5SgBXvyXC4NGJmSPehvz
	255IXFiIuysCzDgtiVrqcCV0fnh2vi5cNe63VKi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659772852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ea/19zL/deRoeSTyToleRw4hVMl+JrloIwG34EEOGWo=;
	b=UauygHl8MMrBfqtXl4vUrjAKSdMRhL/VWxfKMw/orj+reMcQK18csB3vVhHdQbCM
	hR51LqaKjoOpMIbZpu0oDMKBrPwg1h6lA001saSkbQnkFet0dNCj862bI5Qcn8rACAZ
	jkrRITYcE1b59bW1UPsZsycVxd9ZaWmoqdnUV528=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182722bd92c-5e299504-2c36-416d-88db-8fc150415d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4339b09e65c1288acbacae1611d0af421b4cd9623fb8d406965c3adebdcb913
Date: Sat, 6 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659772852
