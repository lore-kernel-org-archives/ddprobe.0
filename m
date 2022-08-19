Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355676105
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660947052;
	h=To:Subject:From:Message-Id:Date;
	bh=WcmCXT+jRM83LNLf6W3RmQlz/c28E+ywz8Fqs+FNDsc=;
	b=fW5XQ1QrWrDf26FgVANSCU+EQOLgtjvBRdOTOR4IwvsVWAOl9jlqDAgXG/eXQM+J
	tgpGRHpl3ZEFIbAsXk+tpa7p+pZ1km/ROFvhf9tNehsd9OrXl4CzypZE1BDGjCZQKr7
	cbv3Roa+OaQ4xSo3f/8pTGOjMl3SJ2EEAKOcbYDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660947052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WcmCXT+jRM83LNLf6W3RmQlz/c28E+ywz8Fqs+FNDsc=;
	b=M754x4ls4dP7ut+OQ8NLNTlLusDp7aiJWPSC8p9tGQ9N3Xf3TJqT1qwpMffY+MtA
	eSPILe8ICjsatzS4tTfcczDqLpRc83lcDUQHC2TjqWhwBz6oPQAixjka/YYUl0B7+8n
	r97e6Pwl1dgBoemQunSUQDQUSz2SqUygoP42EsrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b828b83d-8d6c52dd-7669-4a21-ad84-76e1ee79fc41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d1ef3ff5fe05816b656af80a32a0415f610fd462fc2ba45f9bfa3b7f706bf4e
Date: Fri, 19 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660947052
