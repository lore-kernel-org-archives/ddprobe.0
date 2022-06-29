Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B877A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656499612;
	h=To:Subject:From:Message-Id:Date;
	bh=FImpnltaxaeJGm1E/9UW37SGxSlSgcQDd6eFyRmOAjc=;
	b=i54Ed/KhaoYCvUYC3jGfp5zQucvm6xHk3klCvNbQT8/OxtAB6leHWZpTpi16IolL
	bLcl7GQI2839Cll/rEVFtjZLXSqjMptTJmw4dfsjGvNxoX/mITCD39K5dgk+OU4CoJK
	+ThnDKvPgIIPXkFD+JMEPJxOVvKYlcE0fVbZuie8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656499612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FImpnltaxaeJGm1E/9UW37SGxSlSgcQDd6eFyRmOAjc=;
	b=kYT/o9ZUfKYaZtyHf93MxzQY6e9jqu1qVk7mAIgulwDMf9yGQY6HRqg/5MEnQvaK
	dysFgIId1mV6p+x7e6cQX2bbj+/g/wCznKBNAytiJdSmLDLqfTcvbgUUnkIdJmcR7GY
	m/4IwRZCsOA4gyOIRf2m0Oyjx9r+0zgdjjIvE08M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af122a7d-48d2260d-9eea-4d55-8bd4-3ef1fe1ec228-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b37f78b360918ffa09351d7aca316fcbdba8f248d59e986a30fcb508bb67607d
Date: Wed, 29 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656499612
