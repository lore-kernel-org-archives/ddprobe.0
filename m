Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7542F5B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661102452;
	h=To:Subject:From:Message-Id:Date;
	bh=RhOpsfAtQD8t+ggtw7peypO/ApUhRVutcb5fiXYGAAU=;
	b=WinVBVy65mvRcDgwjKXa6HWisADlrjbYc+RK+oMJXZugF8l0CUw4VdPd5WSGj0a+
	9Bhe3m1xFW4N7M2++9WMxbd/bSrC9OcbjB1pAlvD7F7LgIA5EiUFC6o4nk1012DkI4B
	tsiw+BxM5lcEcP5tlFum2tB5hX3ucGfri3uMlgco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661102452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RhOpsfAtQD8t+ggtw7peypO/ApUhRVutcb5fiXYGAAU=;
	b=WVaxcmbDNPSHwvgAnajb/TrLCfidYmc4EDMdXEDfVULteJzIF+Ellr9fL5zj41PE
	6SqbtFBOQEvGhRLuK7OSF69tmZVKKUaHLG1F4DydZI+NInVOQ8WjBpTs00L0KuTR9mY
	5abrtQK2ZCVtxGqAVOMUVFyq5rlv/NJDw2mrEp3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c16bef49-24f43675-29d4-4148-8a73-4a41654a334c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a69aac5afbc7336dc354c9084777fdb8ece15337c1782da506bc88f8ef5b847
Date: Sun, 21 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661102452
