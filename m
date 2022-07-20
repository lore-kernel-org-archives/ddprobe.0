Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5A54405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658314612;
	h=To:Subject:From:Message-Id:Date;
	bh=LqC/9D1Ly0nZgh5LXGw2lzMMD0oxshI5lO0CKUngUz4=;
	b=SjDu4hG7o85C6Fh2TEC2Gi2PWzHyloKGN2x2Ez5zUgiSbMlzGVY5Wnh72tGs62Xy
	5WoGyPPbMSrd/HMOVui2o6NQ6nCivlHirNwq2RNplhiBP+USoL4fSX38yyDE3kTszdk
	QVLViwXmC52uZ3Tp9m7CeU7obIr34lwiuugenmqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658314612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqC/9D1Ly0nZgh5LXGw2lzMMD0oxshI5lO0CKUngUz4=;
	b=E0OKK2oKn0hfPLdTLx0mn39I35/3HLb5SLOowkVAxYMb5FdTY72IGfmh43BmA5CO
	k+T3nNAxSU9tq3AmEQ6sCpMlUPnNJpzWuwHruRw1Ab115mA8ZCBYb2mygpWeZ4/bbNd
	sWb0652vwHQLIf+shTwarXVoXWLWWALJRDWFkbuM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b40decb-67f412b7-33d1-42a2-8203-729e65ae74c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 919ab8f7dd3a545008376d29add7516afc336b24ed3ad9c6d7ea6baa84a33b02
Date: Wed, 20 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658314612
