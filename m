Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD48196
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 06:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653893159;
	h=To:Subject:From:Message-Id:Date;
	bh=xU8vbyWLCHpExB5W1VOGnhuM0yRSOGqhXAbJ41qgrf8=;
	b=BmS/9U+iMYeSADoJPrJIi+rk1IwJDO9TbdDB9LbpLV4gDft06sdrtKPG14aQCYri
	jF812O0Bww5DePdsDNYFC+KIfR0jB4VpSFpblliekMlGIs8J9ZJI7HVpylxt/GNYaRv
	Fs7fba85KIiEjSQ4dFnNLvlGi4yUGF/HqfuxKWl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653893159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xU8vbyWLCHpExB5W1VOGnhuM0yRSOGqhXAbJ41qgrf8=;
	b=i1z38DbgtrwHCXHC8EGWoDieFmZkLAXJ+xPO/fFyXmCB2PXj0w74F664i/wFL+bA
	NicUIw/NT/04x5D4+uax7acS9mTFXITvs1CdmnFNcVx5rgN7bjdg4fUyrlfqeI53VRl
	JR7W0lUxhIRUEmPmv4x01oGGPGzFwY8N9zUteEXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018113b6d987-730138af-ba8e-4d13-b3fb-4df65590f7e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1071d178342401eec90ef38f567b346b9ae9089eb4f7c80e44dd114c7d4b52ca
Date: Mon, 30 May 2022 06:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653893159
