Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BB533C3
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651006318;
	h=To:Subject:From:Message-Id:Date;
	bh=//6lGv7gKTuQFSXJz3/LJimeMcS39H4UyrsTIXdpyfQ=;
	b=jiQ4YOOVQF0zJ9FjfP+q7qIN4bT3vE+eayESgs5finADVT+/CrWoSTKlQEwjgOqc
	PZKHGlA+KHrSm0zt1QXFnG+MgmXL40Tv9V8uoZXGqrVYSnwXOWNSTPudoGK8Rgo8uoq
	tTimOVfcAJYJnSW5AMXbPHYXyzEdzKRK50djfJEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651006318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=//6lGv7gKTuQFSXJz3/LJimeMcS39H4UyrsTIXdpyfQ=;
	b=BJ0ATFNoOSPTAJB45wJXxzBA0LNW9zoNlDm4oCqfJi+HmAoTBEhl+9U1WR2lfVNM
	5FNP7aRXewWzqF+2KBTkztkg8KFDhLS4qV5IbEbCjCv5fZOe0dVpfScdXyRGlPYXMuA
	qCJiOJ2HofLhFnTVj8NaiWSNB0acEXmTwCbmeTJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018067a526ac-e1626e8b-0da1-4d7e-a414-8a3bbfb0df9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66ca9a305857e9072c27a928865c13f7eaa803a4910196386a90dfd36c638a7b
Date: Tue, 26 Apr 2022 20:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651006318
