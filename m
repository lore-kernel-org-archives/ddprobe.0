Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF031364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 16:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650385078;
	h=To:Subject:From:Message-Id:Date;
	bh=49lJpYKuYWYRywqY8sH/GaEXExZ3jFLYtigXchiO4tc=;
	b=GIzJP85pBCKRzNMOGJUxMfyHodD00M9Po4mgrYKCBTCt2o4583qtYuLsXfHQdH1T
	ZHz/OPO0auR9tsWGTkE9B+q2f6rmUQv4V9Z9XcXnfOeEnO2XhsQ11KDUeXzY2zQaJ28
	QyxLmD8xJxHa7jE73MGkF8Iw7RXanFhS1wp1sPoE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650385078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49lJpYKuYWYRywqY8sH/GaEXExZ3jFLYtigXchiO4tc=;
	b=QWJv6HBAnzqE8k7FQJDD10NGax9fwCQtehMeTN/tmhzlQdH0aq1Z652zu/nNax7l
	mmf9N2/4v6HgzJXvUiqxd0pn87liGvTXbRB9BQACmzcCWwNWtrTwC2QbLpLlbbmWZ2T
	NdhvxRTyZcsUU+On1/YfywkFiUnXo7n/u4cVaoP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180429dc803-57946da5-19de-4533-b6e9-518648120375-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e51a4e14084a76efc10794a1733fdc1a1801155fa71577fdbb9f47a616641fd6
Date: Tue, 19 Apr 2022 16:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650385078
