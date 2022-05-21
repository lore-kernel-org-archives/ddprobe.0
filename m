Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37DE2F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 11:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653131759;
	h=To:Subject:From:Message-Id:Date;
	bh=v4NvuYQCALuM7Uo3uNuA6EJ4FkslE9aakHnGJ0lWMkU=;
	b=PM0x8ZMzCBLn6OTJXU2vgYDod7OF2h+SGzwfSc2r5e/qqr5QKkewXd0IbGeLI6tV
	MqyD0hA679T0H5J7PSdW4fHuYzMV8MqVnuoynnaEX6OApusd3iCRX/+PCTfNaZdY3T/
	xMmIHzcSitxTP+l6xVYwVXsP8UMy6Dm5c17+OKTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653131759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v4NvuYQCALuM7Uo3uNuA6EJ4FkslE9aakHnGJ0lWMkU=;
	b=ekD7d+5RHWQMhfeC/J/0VwyNYq2YaoXRkplQnOChWJXXCf5KYsVRZ3VnPo2YqYeY
	NazANlQHGsqo9Cp/zJieZnXdkOBAYXLV1yvjpy8dqPIlCDWh2nekY+fFLgP6jpKG0Tm
	aeOcGq9w672BQ91iJAeVN1tOtWEnHhWBkuzOyOPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e654ce81-de069820-0129-4c41-ba2f-24d95b727f96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91d2ca2860061ee32f56debf44214901417b37f78785bd81b370bbe1d3c91f41
Date: Sat, 21 May 2022 11:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653131759
