Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3E057D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647878784;
	h=To:Subject:From:Message-Id:Date;
	bh=Pjxd37lfcbbtU+fbX+23k/CGmu1/90TrAY0lGY1TCcg=;
	b=c2oVzs7thpl5Iu365mBUBKtzpcIJJQR9DU1UPe545+0dCLDfXSFtZepG0X7yl0za
	a1VbdpiyKO1mUgqn2mXljFB5y0Z4PFDzavXJv2MsxE/qW/Dhlc/zJKTr96Xoeb5cHcF
	4W2M/ciZ28VJToPNLaxFR6LNC4YOFuxlaeQM1Sj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647878784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pjxd37lfcbbtU+fbX+23k/CGmu1/90TrAY0lGY1TCcg=;
	b=RUYRfqEKRNrI1wECF9FRsnR5cwFgedHv7EMXEhW1kfaKmyVlhGt/nJsogV9rmpOe
	FQIilOo1AQfXenBEKtbDbbkeNjvga83QpWiRVBY1eNZVJhUGPbvDtELFmwarpjcheGg
	kwE4itgdUcTfNwfOLULwLwwSePNkVFjBYzTtoLr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad3ac6fd-728a5188-7f57-4dcb-8a3b-08d471e50a09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1291ef199e8b3c4a941093687ba2e63840981874de234e7447a5ee3476c0b8d8
Date: Mon, 21 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647878784
