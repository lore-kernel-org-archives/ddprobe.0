Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761033B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645883484;
	h=To:Subject:From:Message-Id:Date;
	bh=Qrdzgl4ZuoaG/sz5eCel+Gb6Ss78FGtse8J8ka+hNOo=;
	b=kDGuVFhHQNQMDk3mEXTBxzvseD84yu99QxVnw8L0Mhv7022FEUYvcnW27QSVPl4s
	eir/Ed+dYPkPUrPJrfI0UM3Wkw4XV/kbonK9IlKN8hl8E+MAGUS3KAqDBrYOAeiedt5
	xnflpyjAvuF82iCEtzKFj93NchemeREbxV749B0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645883484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qrdzgl4ZuoaG/sz5eCel+Gb6Ss78FGtse8J8ka+hNOo=;
	b=JBAoIw84V3l7IdCjfzB+VzALYz5jPgFLy6zRuCrubRxKMygbcFrZhMlTmrKGnf/r
	wQrfgelpPDCmXMpb8N3M9sbcuGgLUGg8dJsR1Q2+mW7xow8Xn3BNvJg2p9JkLSAXNQU
	uz5BqUdLWYB6xkCQSHaISxT8sORwvjwfQFUjFKWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f364cea7e-976e79ab-e3c3-4e9e-b59e-107ddf4c75ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7106b9b8c01195d37378c413567943fdf7bdd13bc7b6b198abba07ca6dbfa743
Date: Sat, 26 Feb 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645883484
