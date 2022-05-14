Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B11F362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652510879;
	h=To:Subject:From:Message-Id:Date;
	bh=3oFDuk0RmQlsntT8nTxVLc7eam5QPFDffwN5P1giug4=;
	b=UT0oCbT3/iFPXMUX+dPZnekA0emzgYVjP1UFbNElC+2UdKsKT1fUNkHw32ZlGE5K
	QsFWXA0seylo1D+XReg+J3DlVZlDQIUibrQBYEmkqDEBTe2wYSpaOIfmoVsLcwV5h6V
	NarqCV3rZHJ7POZCBr+XooSpL6ib4tNHZRygeVT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652510879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3oFDuk0RmQlsntT8nTxVLc7eam5QPFDffwN5P1giug4=;
	b=im7lOg9gPTKFVZidhDZPfUHWP2ZgS4TEB3NDE577MCqtlLL/awGbM8XLLVqb2dBe
	XQYngYhN+4sgpMom0jVKaGxpyxMES5W1f9AoP4yz33P+qKxleGJq0NxNVuj2UcH0KG7
	eW+oysl3UfPm7K3D44calBs/3ocSeunN96ywwPtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c152ee17-2b461473-cc43-4c62-8030-8089414aed66-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20f0dffd8a25e56d7ec3e14605fb9621c70e6e45b9cfe4d52558bdf065c17a5
Date: Sat, 14 May 2022 06:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652510879
