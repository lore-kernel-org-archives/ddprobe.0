Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8313C1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657538812;
	h=To:Subject:From:Message-Id:Date;
	bh=sftGqqZVF/EDgcA31Xmwz2r60kvMf903B0Vzs4CM/S8=;
	b=V43LKZjSMGjRP6CwWCV+wvlDmeMnnT3GWDWcwb1Ql/Dkt48Np9ZRTCty9L16G3oG
	RM1aTo35rv7ycM9pJuZSC8RoxB6sf0TJxbVzvmi3/4XHSdzlxZ8BMTsbcPP/ra+y29b
	MKclbWu9M6g2Nm0tvU5Zs1L/0GXmakpKM7o7lYPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657538812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sftGqqZVF/EDgcA31Xmwz2r60kvMf903B0Vzs4CM/S8=;
	b=L0jtOVvfvfKbFkerkhuizu1qfjbWBq1F5zewEQpIIyMFl7OB+fWcAlmgMPd1NITy
	+xTBSFzUpCgWIBc7GJsg3Xz1KuwBv86ZtMIjNy7qJe+1TpddZuApY0DyNdy9tw9rPF+
	Vp0wXcNyLkzxiWJDK0O53r0m6EpicbdoDnZqxuIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ed0319a6-e3c16174-7379-4cd5-a8f7-e6b684a820ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16cb950cff7273ef13d333a419efdbfeb9fd9775d6e91a127f5b33ddd011d412
Date: Mon, 11 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657538812
