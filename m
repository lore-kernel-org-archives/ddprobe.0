Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9DD7E1
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 12:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651062718;
	h=To:Subject:From:Message-Id:Date;
	bh=BBNTpwn12oGfI7XdgEzn/DD4XlpX0+b4EKOH7gbufAs=;
	b=hfh6zifS82ny/c6KfURcgAvkFFc4tPQa2gS+IiJCWPjcCyXqIbkHtk/RC59RGnZS
	yDhTBo5OTGk1+bKBZRslSTOufy1JntqHHk1fvLjcLjXqcTBUZlAjPjdf5NPq2NT5gzh
	Djq+f5FuUYkmIN/3l94PYZ5WCzDKE9WcTKHSZ40E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651062718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BBNTpwn12oGfI7XdgEzn/DD4XlpX0+b4EKOH7gbufAs=;
	b=CUHK9X7g29wthmPJbk3DLM6TbIBHBzhCC44smyQJiAXANwoghNAxzMNqLmONwPSF
	k8SxgUEoXFjhg4yR4hZOS2Y6SdzkwCU1kzxCGzGj1Z2cLZiQT9bIneyXIjWSrSV0J/n
	H29ZHrL2yHYBxSwsnZpaZJ/2oL31YpNDSehzl564=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806b01bf37-04c4f3ab-c4cd-4c1f-b308-aa9311c338cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b60b8e7ed84d0232731452d34e9e2595265522f9a40f557a36dce796f8f401d3
Date: Wed, 27 Apr 2022 12:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651062718
