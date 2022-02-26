Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AFA3B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645880184;
	h=To:Subject:From:Message-Id:Date;
	bh=Fo5bqayBTDFomMW26jAb6m2o8RkxZwTGlzj9ZmHy2Mg=;
	b=JtPzjR4Muxx5Nk14xNtACWte9N8W1R/0deKqa/KQ0RgNEtDhH5ge0M9dEdnmT1Cq
	/atzdtB4fyV3yS+kE6m6cMzeB4pO29SpqzlIDX6IxFf3KiKtUbKG9MWQCT4LGwrvDEj
	Yn8cwhuwuAGEN5M2G0SXptIhnWkIDB3fk/Y6/a4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645880184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fo5bqayBTDFomMW26jAb6m2o8RkxZwTGlzj9ZmHy2Mg=;
	b=JXRDgUdK+rzznxRLIaAAn1hD5duYo1x1y4kLwfWsqEh1eH3DlDfeeSNF0peiDFST
	Th30kaLUf7pFkL3j+iQQb2MhiLipzxjitOjw/7DPDs2R3sAsPNvM4/CAfuCrlYGyqal
	jMhZRp2ptqkjItNoAtFKlrHuMitQdDa97isY5GbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f361a8fa7-2986885b-53ae-4c8f-9481-7c8a5ae89b2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a6f995e3927c90afd3b8b76dadbbc1cc433678b1061140eb9b741c81e8e095d
Date: Sat, 26 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645880184
