Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1520E46A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658693812;
	h=To:Subject:From:Message-Id:Date;
	bh=YtxHQh9Xig5sn4PVdx8Inec/pC/deuOQ4mvebnDhQF4=;
	b=UJr1ZL3lSXcenlzgGSdAk4hkUOSUQXlsX3obL1L+Xk2HdZk72v5Y51KXBzjqL+sx
	q5wKEywLUfVpIoxQw/CCb/fiVObu8FBBa5+79K3j9MiGdzjM3rqLMeqMeWD/6mjCIc1
	EkSf0jzGxQCSI+DSjZJWgBR7EPgIDzNZtEeroQV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658693812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YtxHQh9Xig5sn4PVdx8Inec/pC/deuOQ4mvebnDhQF4=;
	b=INT1LMqgnJZqIAbk5RO28Mhl9WKNlXWtVrxZE1c4ZvJoGUKXEr2aXB/DILIdwdPh
	zWCz85xvm5cuBrYLZvrGuQpc5Xkg7kJ0SfgIAR4xR3dBpx8OrRMPjcydWQXY1a/Wv/i
	/AH/302AXz+mXjjxilOKWSzJ/QtOuMRJxR5blEDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231db0063-49504ddb-693b-486b-b6bd-c3727ae899cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6456c287f5c070c4e9180714099ee7db84efa9439434df2306996779015419fb
Date: Sun, 24 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658693812
