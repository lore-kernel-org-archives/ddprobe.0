Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2737C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 00:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650847978;
	h=To:Subject:From:Message-Id:Date;
	bh=Ls8nSH4k/tWdyGTHfku9w/oe52GgVn/mf9RydofssM8=;
	b=CZrxo3wHIEqMaSkWTwF7+bpwmnewKLMw8MbipIDpqs1xwKd2eLcT5+BjwTk0SJih
	TK2jJvJmPE+Bt+b1gO/ycJX9NKkJ4NjjQUdAW8Z8EPejsubVX9T//nARteBhMf6/m7J
	ZJFNwy8a/VAJEUwkELG/xMB/CE5WoNFEeILqp7yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650847978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ls8nSH4k/tWdyGTHfku9w/oe52GgVn/mf9RydofssM8=;
	b=dahgTfeCWINSFJ5FbiQ7vu8V4wYn/ViABNPXhlU3KXIisDwGZxkeQruDkn4r5FNv
	TECQgLYRtrreU6xPjmDsXJbmaGR4Y5V02+N5S1J5nubhGx9yGWUDutAo42K+wWRDuuT
	2AUxIhnvIg8ZCno1WcAlCObLmJEg8vJ5fx4wPkkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805e35139f-52a82d89-67f0-4880-87de-523630074398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4119b53cba0afcd73b9cf0e01ef6836fcf63d0deb8b147fac6d8fc74bb184ae
Date: Mon, 25 Apr 2022 00:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650847978
