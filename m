Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196EA7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 06:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650867778;
	h=To:Subject:From:Message-Id:Date;
	bh=Sab5ypFnQf8gEJtCUqCHwnTMP0VmObHE6gh+phnkZa0=;
	b=JzsJx2Cqm3NtZKsbRdbUSIwqFiEsWdYIWdrpIlrdDZe5TBJNja9OKPkLiQIApZoX
	8LZSm7kq8J2fODRwAi5EE62sU0HwqUbdPDFmC8Zao5ovpGndcMknpgbDmrCw1YP33fd
	brjl4o7vb5fr4dXTd/SXX2j1pdoLAGWvikkhcqiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650867778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sab5ypFnQf8gEJtCUqCHwnTMP0VmObHE6gh+phnkZa0=;
	b=fFcELqZboePNcQxW7xheHRHllt5+aMHOLE/brJlSa/G/HtI/csUOVJVukq4R8s4s
	DNlQMSM4agV1TKBxaikHuYciBkRoysF/ydEQAc+7+gg/Uz+dlmk7V0o0YYIG6Nqb+6v
	yFGo7ouhOanV+B8gheGIf1Uqgm1m+7Crtdt3dz68=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f6332e2-2c81dd12-d61c-466a-9e98-eb71e29498c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb844b14dc5fe6f5a43c08717838e37073f8e5abea68ceb60eed890969d34f7a
Date: Mon, 25 Apr 2022 06:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650867778
