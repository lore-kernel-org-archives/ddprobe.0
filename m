Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F054B1FD1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 18:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649786638;
	h=To:Subject:From:Message-Id:Date;
	bh=rgVULcGoII03Tiy5W4ZYmMixqtTY/onTNtZm1lwEiEE=;
	b=eCFz5S1uI/xcpCuFx5yWaazYJ15OLYo0ZETrpXYH2fzUSNSPSrYaT63U8rcETef7
	nYiT/+XqP5Ki0EOMlr61WFIVH39T1mdq55Giv4DKx9nARy6H1MguuX720a4Qkn9Md1K
	Sscl7PRKM65BEnUl9dKYfwqGQ+Xcv3ZOmLipS3wY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649786638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rgVULcGoII03Tiy5W4ZYmMixqtTY/onTNtZm1lwEiEE=;
	b=VlnXQ9Y2WjWiC1EDHPSK5Fo/HuZVx1s0nkCM5t1uFs7F5ci95kli2Z4ZGXf2UacN
	iKKxVvf8cRVyf+p90wkrazNqEGeyCGffgs03HwFYwJ89vKAk/kgSIM2DD+mOtFWHq3G
	csvQTtSiXGsnFl/gESxRQ6Qf9drzfsSdqgunZJ38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801ef24fc5-5b30f55e-8a24-4bf5-90f1-f14c938aabc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bbc6cf7704b204442deca53881d5ddd07a1464f1874e611733d3683b5433966
Date: Tue, 12 Apr 2022 18:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649786638
