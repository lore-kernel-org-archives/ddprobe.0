Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3E617F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647666385;
	h=To:Subject:From:Message-Id:Date;
	bh=h6gn/VBy+1t4AyAaDAWDW/ZP054Y5+ssecv0XViKCH0=;
	b=l1QH6nZVOI/I5pp2LjOxwBiqas3v3QqUCnc/O41Zm33lpLY3fjOZxbthgqF+znXN
	spXlTDHQzPytFAtWDXEsV+xX+/+3Kw0OdqjkEQdD4sI1Ku97u7MGs7nvUOilSQIk5t/
	AHuxbA+CTNqF6lKDGW7r8/g4lPmThJTyRlsubp9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647666385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6gn/VBy+1t4AyAaDAWDW/ZP054Y5+ssecv0XViKCH0=;
	b=WJjctJcjnhPiAD8NKbdlDXsPUZWG0IznG1l2bvyRnGbWPe+N9VYUhrwv8Bs3XQqi
	MXBbeUx/Ejr3wWuOB/+EyiHzt5MeRW6zR4jR1bk5XVxRUPgZs5EFx3cTmBCCBPHJp9H
	QDU+vADfw7T7RSkYXtzGYE/AzA+/iUVbPBO8VnJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa091cfb4-7a66711a-7185-403b-9ace-ce0c0f3f1ce6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06d2fa29ec4c512e86b7dce6ef55276bea004f407c3071ee122a8e27672ff937
Date: Sat, 19 Mar 2022 05:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647666384
