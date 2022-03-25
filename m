Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5887E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 16:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648226458;
	h=To:Subject:From:Message-Id:Date;
	bh=PNJ3HDePBXY+hGpWQfFu9kEHaTMfIlTyGN0n5myGQfY=;
	b=OVhUgWRzG/xcMw+aUCHmJMOMvCSsRH8rnRTlzFB77K/xfpcvWL0nn8loEhVoArdE
	RnSbHFUin/lGmCWaHNeVwR5i/mtrJR8JJD5jxSABULsgrNq+iirYE2nXsyooA1Zmv5p
	jE/oEabfrlK1mSIWyySW2H67N4oLP+uDVh6BJYmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648226458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNJ3HDePBXY+hGpWQfFu9kEHaTMfIlTyGN0n5myGQfY=;
	b=CsbO+9ZkqQem2UyLvkFgmjxannjJEOHlDo1dsIfdF0MzcynbFHzYOSVFFf4oXoSU
	Cf1ChTxpbmjBADKmm34fKJrcVsSwf97KX6jK3VBtXpCg3FgHZFTcVZvduGXrJHvxuvB
	rMQ/SKr6KVg3DkkafC4cns3MWj8ehfjgtxNMLxpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1f3dab2-a751bf93-c4be-4992-b494-92b6d50f35d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdef66854e48fb29e66e6235fc94e690acf7fcad4a1585f576da602b9096f63b
Date: Fri, 25 Mar 2022 16:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648226458
