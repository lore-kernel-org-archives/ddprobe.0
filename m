Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CC3A2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 00:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650328438;
	h=To:Subject:From:Message-Id:Date;
	bh=XSKXJ83TXQVKMyg1a+7oomJBh/hmm5yTJeMlNal4Fg4=;
	b=j0a2YRj1kSv9xKBFD2a7SrvolQkSi0ISLwvVARSS1bxMQtDBZcxHID81NCVpPkNA
	9b2zpEpi90SfPIIuAaTQaGBPurFLvFSBkd5VnhrOl7fZC60Pf2RQMT3sc0d6SgTEBCr
	NgLQ1zKV7MTC6TaIzksJ6/XMWuBacRdoMBzk+cTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650328438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XSKXJ83TXQVKMyg1a+7oomJBh/hmm5yTJeMlNal4Fg4=;
	b=Uw3n3x0guCB16ceNHdYryaLqVVqKYXlOnoC1PCHPLB68qV/1MlmyD/7LjTxTYj/4
	/rtkXOOgMxbBHxhFbE3N5hChoMEH2VSp4OgZAaEtmsp37L8Gyp73mKDbmnvQR98cVvr
	8g5WtKTbbfPwbqhYx1+qqc60Gso0OdpF4rtHekds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803f3d85fd-67af4317-5129-4a20-95a5-c92f7d67efb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 582467ebc0ccb30cc67c9e9554a55d58f46b728054088900731d9a3446978af3
Date: Tue, 19 Apr 2022 00:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650328438
