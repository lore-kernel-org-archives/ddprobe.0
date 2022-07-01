Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9245410E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656641813;
	h=To:Subject:From:Message-Id:Date;
	bh=Cee07WhLoOW5SEAUd2hClmlcQUGy1FjhDUBztf9/BMs=;
	b=bwH0ChKGjzfRBWsy1j5ogULFfcB15YQ+1u2BzE72S79/MDuAtXjiLoLt2IYkxkdw
	6qHe4ioUMtmzr0r05HqZpkRvbZ+/V8wVazl2gxQhv/Z51q5b/wOmj5gNABzW6L2aQQk
	KrNrcPuO+3FvAg/6VPk0t+TzPnk7UfCSvV4bbOKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656641813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cee07WhLoOW5SEAUd2hClmlcQUGy1FjhDUBztf9/BMs=;
	b=UKbKtC9QzQDe89LP37VDqzpEibaSF18pVGxY7vI+rV1LjcqH3YZxIPN+5BW3+bsN
	q5OoPNBGo8WCXiuv/S6rw63ZmqX7nntrpucUsbhVrFx6BX5xfF85DWMQtfVqS1BtDUI
	tO2MlNi1aTxPuenEaTmyIg1CD+jDaOZdc1EUdhyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b78bf768-89641bb1-f3ec-4bd9-a97b-6d06858735b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7e773d6aade4f568bdd043b47590b09b83acd8d459bed73aa4efcae418be72c
Date: Fri, 1 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656641812
