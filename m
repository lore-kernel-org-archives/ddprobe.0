Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAEC7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646605584;
	h=To:Subject:From:Message-Id:Date;
	bh=c7b6gdn3igfOb4TcsBzMR6b48evdL47MBWF1w570Wu0=;
	b=ZSpEgXK+Xt7toHvi/kGiTcwm1K1xqzBYzUCvMLyT4BjR96iDCsnaHg7FhzOWGGmJ
	FxgEZJClFAbZ+DutQE4Gq2/9GunLhZ2YYk4YJG/54M9ZExpMMkMP4JKwSDHN1MAUrXv
	fWRQetlN+cSP4Wvj/6LmyjenUVO4vUe+EaaZ1krc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646605584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7b6gdn3igfOb4TcsBzMR6b48evdL47MBWF1w570Wu0=;
	b=a+YYN2+uNbaNFHXfpurO2dIn9ZEp5XC04acDQnFE/QoK5t6y1etxx0VAReVo74kd
	ZF803CqKx/MbBpO4ijkv8lcQr63zTzw8C+5kX9PSmzvsn/q2TbVEtlhfZSOwLhTs4uo
	I0QAImg449LuPrh4AILZ0dAzzPsJ3BptAiugL2qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f61574980-112c357a-54dc-43a0-9b34-0fa7c522c1b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd6d18303538c3dd78c73d057f4793ca4eb937fee5a5f14bff206e1beff01201
Date: Sun, 6 Mar 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646605584
