Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E535A5B
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651856878;
	h=To:Subject:From:Message-Id:Date;
	bh=5/kXt3tcs0GF5QJeHfMmFWkeH4PmwB8j1zkIM2sGf9c=;
	b=Dp3IdNO/vuBs3ubpYo5jDyC/i6dgCv3wEXE8YXFIu5l9mX9wthrt6As7N4hn2JFF
	lKbWEEgwaDt3Wy40TKV+XsNcBBISo5f1MVFXcJI8l5IlJfTb4Xn4QMNfzrZz6udpCy7
	YguYV8ssF9g5K78cGozV0uA3z2UDEvoCH2PW8ats=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651856878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5/kXt3tcs0GF5QJeHfMmFWkeH4PmwB8j1zkIM2sGf9c=;
	b=JkaRN1F74CYdvfb+64AkxF3PRFkHitXRByKgxUQwOhWcZyHMiYJIUMzbgN0DbNTH
	34ixIf41crejPjUvUWD4p5BK+h9XVV4vN+comKuo5CrNqVUqMR+32uIqsuF0A8eV8FR
	Df8mFN4GnbRbGxPAQeYXQ5bRgf/e8MdEBJshe/gE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809a57ab06-1238230c-ca6f-478c-b9a4-b30ee0a31a95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2a12ad0ea6e96aa06fd2241f6325b5936969eb1b8ba95ebacb53cc2567fac41
Date: Fri, 6 May 2022 17:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651856878
