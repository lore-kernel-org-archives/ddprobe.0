Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8123C1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647476784;
	h=To:Subject:From:Message-Id:Date;
	bh=fbuaQ5xLlh/+HYZQlv9fdB1cFDttogG5R0FXPAZE7DI=;
	b=elvfRVT22fL+Jbtbl9xVGlfUAl5vMYhEShiWP7Bhf+V9K21EHRUqoA2ZxYcpOnwp
	QyuogyrRWRIJ0fGn2AG7ZDxMds+KTbPnYmQ7N+dt4urS7ZAiPyBOpmENzIwPdP7HpcT
	tbxuBVYZ8F6/HSLCBTyc8fdIruWgQs8I+/GsqE2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647476784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fbuaQ5xLlh/+HYZQlv9fdB1cFDttogG5R0FXPAZE7DI=;
	b=KwnHSEcyUqhox5BkVRMs8gysuvobR8e19Z86ChZoqvBca+g/jnAzR0to4kfqk4RB
	so/soB+kc3CQjjvcJ9ySTwB4p2KeH1kke6U3AyLxKcRWro95Pw0+4RFq0ant/X2KftA
	Ui+4peeUc7warr83iXJJdsIskUpntvEkER6rmzpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9544be66-9985058b-587c-419e-b5c5-3bc3e8888718-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecad59a8ee25b5c6375d2f45a7ecd4861560cd0d6946eb7e43466f540e03f46d
Date: Thu, 17 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647476784
