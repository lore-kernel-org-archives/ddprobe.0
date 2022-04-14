Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02853225
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 22:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649974378;
	h=To:Subject:From:Message-Id:Date;
	bh=T4/jq+Hoq4NMSDw9DJYBo1USF7mkSTQDcmIm6HbQVdw=;
	b=awTBPTideFRh6jTnzrLhnzTKUs80WsZ/JW9m1e/npLaQl4CvctCBdTthwYpu66AE
	VXaanahs9pTBBGEXCXHWZOOz6515bQTNKbJJ1cSkoWABxPED+E9XCP3djZ2Z9jHFa65
	NITrTEHfTn7LX1DXPj1p6wJm6aefOBA0rc7hMLSQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649974378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4/jq+Hoq4NMSDw9DJYBo1USF7mkSTQDcmIm6HbQVdw=;
	b=KZxuOxQO6UAZZJ26zOumrESK0PXNzn8K1PFFLxDLQw5Lpj9MryCylG7zWvUTvOhV
	hl7gNsoUdlTtPKfcaUHla/slQ2l2ALXqYpLzfA/azVw2eVxppeDKL1pjElIIjcTnMvs
	25uFXczLFk/pPjNP5yqsK+PuUuWMDPDn3xQS6lKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a22ff3d-70277bb5-ec06-4788-ac27-f0dd7da565a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e93af48bb84d5da9a7a6acf49cf6546b77c39a9659d78f06f214374a4464d9e
Date: Thu, 14 Apr 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649974378
