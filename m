Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F4C802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647928285;
	h=To:Subject:From:Message-Id:Date;
	bh=z2WLeVW7zDIg/EIOrJnwN8oOOA4G5h8DXTF9XkksGsA=;
	b=Z1QCKvsixgv4VPGBcHcvTJk6J7dBTNL2YZz/eNakcZALDnHSn34yTxKJud0Bg0Eo
	GX0v0RYUi+/Wg/cMqhPkK2J5yMLVtaJNHUdzER0hV+ySm77fMeMp/12bXixgHkxdnhO
	imCvdCJmpt8xmycjz2HLpDgO+crX1R30ESZZvtp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647928285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z2WLeVW7zDIg/EIOrJnwN8oOOA4G5h8DXTF9XkksGsA=;
	b=dpwZuDyr5d0+/3ARV7PBry3bRZoBQwY2w2F8ia7E8iZJhTvga4kHyP/9Iyi3PClc
	Hau/UewwaGxOzGrQ+6Q5tXrOR9ViCzZ71QM12Ja22A1De+W1nuxR1cFny1d0wNfuKsd
	o/+aJ2Iy65TyY2FNTR6IKcCDq61HBMUr2zZ+M9AY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb02e1643-ece81506-d9ba-4db6-8837-7807de812bdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54e437d3840dd9297307b039e87777de98b711d78a01ca51e6dd70fe269840c9
Date: Tue, 22 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647928284
