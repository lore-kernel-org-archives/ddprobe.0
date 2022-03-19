Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0FB163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647701484;
	h=To:Subject:From:Message-Id:Date;
	bh=WR3I/IsdNW51BOOCp6T0A6+ceuINvRGD7xf9tb8OVkE=;
	b=W3vSxXw5P8cgDwD/T2D/H9Gpxejdc0e9I2yjaNqLwigJgR3wtHZTh4oCr6MTCddb
	yyKXABkBhTERW52l77ytelfDH2AHkW03ryk3bMtOzM4ucKkDTLTunCBoFC1YrsJp5tx
	T1j4c6Ag9y04Ov7sfjRWNp4FWP/N6gUeknPYeoMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647701484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WR3I/IsdNW51BOOCp6T0A6+ceuINvRGD7xf9tb8OVkE=;
	b=Tgo0ajYyfs1MP7s0rjVi2C05v6sjU7wHAho1ly+TOJHfdBQ8Gsly1PVv38Y1xMzg
	FJB6PSgUbLS8yjZ+Nj7p6yhcayHWv2BQFm6gMpaTPU8X6ilZH5rWTYcSploceoZmj5n
	PWxQTARyW7KkWoSZSTdb/d9/CqDiLsOOTLYtmAAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2a964b8-bc3752b9-a3f0-49f6-aa1f-911c56affb19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96456f8a07c03d66347043aa632d7467005608eafa4454d2102756a1fc1db85f
Date: Sat, 19 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647701484
