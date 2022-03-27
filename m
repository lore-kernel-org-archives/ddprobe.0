Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B5B7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648358218;
	h=To:Subject:From:Message-Id:Date;
	bh=z/JUM0C1cJL0vG7556Rygdw7nibA2zlz30mFhUA6F+Y=;
	b=J/TBdskvuFOOq7N3cWfGSWKbd774sArWlJUZBDlGEp3E1KBN0TfXV8UKWJr0lORT
	RUHTUkTAtuVwht9bqk2W/O690J3AuNeimlJ4InnPVIxjXyO2wTxMmE5ylyQ7FkzzXgh
	qRuVx/iQNLKl4QY3R3BtT+Jij9BFdW69WRovyGxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648358218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z/JUM0C1cJL0vG7556Rygdw7nibA2zlz30mFhUA6F+Y=;
	b=WLoP8Y/hPUDmiq4crIUXYjMV1pefbLRnftXz89V4OCl7oIBnafTSB+Ldq3dXquPk
	0x/thwnaEbFuVNEK2BHSODB63pUCUMyNao4lg5gUsxyK17CSV6Qldmf8tjNe6tq1+Nf
	gbWKSYvao20KGCoivwN5HO6bSIBzh+mnv6EON59Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9ce5a23-a1b7de30-2ebb-410a-b7f6-c5897093b374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5e35390d24102dbde772fbf3e5a6af123608b6fef13862f5a783951f9aaaa0b
Date: Sun, 27 Mar 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648358218
