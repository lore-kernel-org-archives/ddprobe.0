Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F202ED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 13:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652707739;
	h=To:Subject:From:Message-Id:Date;
	bh=dAtbgSfOYFah3LLmhJ2pNGW3jk/quJ4mQxE2bAl/Qd0=;
	b=IA51R7brzHkmTtuZVmG0zlSZZvl/JJmzjyus162cJv10ofS9Oh5jaupo3qICMzRT
	FdZ1ODtKm2A2buKuY65t9rgKZb0adwJEYqHmdGLGjo+Tc5vQNzBBYXJpfxs8C4ZgGK2
	gR5vXt7CmGYgaWsum3BJHvucGBTpoXMO6mCvCR/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652707739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dAtbgSfOYFah3LLmhJ2pNGW3jk/quJ4mQxE2bAl/Qd0=;
	b=E/Hw4kGJhawa4TaujvrHtCMgxq3FzpMfisPqyFDbVuW6kLirDMIvYx17ZOQQEigM
	kh/C1r02VJvdSW5F3yX8s38WJ6YutlOu/on5WTnVovFtBmFm4I/wBG2iDC+bfldq3PR
	N9UFg+zEVg75ns3SzhPh2HUBL5PR6gyEGpo99Wo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd0ec6b4-11ec529a-9c0c-400c-85bb-b99bd9ddcdd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f777720ab56db428d86908c5502ca9e05f784ab3299134f5179a69132628dc6
Date: Mon, 16 May 2022 13:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652707739
