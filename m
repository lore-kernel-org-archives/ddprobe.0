Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE327A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 22:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648938778;
	h=To:Subject:From:Message-Id:Date;
	bh=Wb7AYUTVd+UHkeFDHGALoTqunT4iF91fHledUvduGZw=;
	b=jugXQtfQhUP5NmkSqbSP+bFmAN6J54tUo75sW64eqcIEUz4KulZiCoX1FdD0ITB7
	RmzdSYlOfC3uXlXNDpxIHiZ3FVOKjIJpiyFtCLiPjop8T3k1UBUGWi3zDRhIoXcBViC
	uAW9FvbYzt15sYcnbZiOppTzB9XvGCn7DV8GiHLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648938778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wb7AYUTVd+UHkeFDHGALoTqunT4iF91fHledUvduGZw=;
	b=UObYDyHzYLsExtfcCuBGgdPkjN9QImo0/blSOWsQ+4vPk7+C5hGqv9WGw5Rwzerf
	GPyv1qgQWUsIPCRFZYVwUTC+bA9RlJKBwHhbOC8gB3IkQ7rkoa46TFIVmDLt/hN1VFg
	1CJ7qFJg8oP5FRdTKbKUiVJPw2MyE5ipVrq/8UD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec68fec0-54a0b471-aa6b-428d-b133-d24fbec204a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7b3e137ba217217d2431aae1d8dcb7a6efb3b13b4ef490c748d4960aef9b84a
Date: Sat, 2 Apr 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648938778
