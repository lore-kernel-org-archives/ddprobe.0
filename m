Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2B36B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657263412;
	h=To:Subject:From:Message-Id:Date;
	bh=dCW+AP0lKRdSg4khDxkda85wWCidyz+6FUVq5bcJNcQ=;
	b=iju2JzdFz0ZS+MxnNhldtf9OggjCcOCK67EEL1Z6PsbMsO4czrbfLb41ZwdoIGv9
	I/RRimr/BDf+kj4dNC350iIhAHH9FveOriNb3FeKmkuFyw2CunyEo5jtGhLm5vNsM1h
	DGkW+PlVPhcWV1ZpchC69dHDR2TtT/LZa7h0HBfs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657263412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dCW+AP0lKRdSg4khDxkda85wWCidyz+6FUVq5bcJNcQ=;
	b=d6tY6W/juDSah95sFpjtUcx/nMOlTHuKf2ZuzEUdpGbfnqIgIoEKlObSvEFUGxST
	8ppmFxlUlJkn03DnfhgXb/THi7ts68JKYyX+MudgUh1wKIrd29INnD7d12xXChg/5Eu
	ffAziK9t9Y4QJS5Mc3ewMiNudOAWKNg4IKojD6mA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc98d458-7f29cfa1-1509-4bc0-8733-114a9174b1df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cb4af33a15d582169d497eee8f26b2c0c7881b6878447c453a6cc4639cc93ed
Date: Fri, 8 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657263412
