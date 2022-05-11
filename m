Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DBB15A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 02:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652234879;
	h=To:Subject:From:Message-Id:Date;
	bh=DKx+0vPTFOjWNfgwDUVj9CXPUyi5VC+e1+mF2kq87Fg=;
	b=CUfMSZnUjEMEu+ZOl2T3bYZLnULFj8ma2hJJRsRg97/SBe/XHXBSmFcl1d/bTVFs
	/tlUogOioNaHgYpC6MVL/gc/w9jjwlqepyxoA6+96Q7c/hZgx0s6XcywTvmgHw7DSn2
	aRd7+lKu/sxMDUsuiJnfaLlgETSBZoQo2bcREsdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652234879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DKx+0vPTFOjWNfgwDUVj9CXPUyi5VC+e1+mF2kq87Fg=;
	b=Fn8dUpXS/S0PK7IP7/KOc1lHqnLXnSUgnMyAbywuDC04kRUozLYpuDvnoyzH3JFt
	PsgyCBcjqUOFynejP7sYNrCNwiZYcRvQ2nQ1kDbIqFk1sa20Bl+xPbH0jnnnof2P33a
	MQ8pdF4OmFDpVJU+uM0Nt3NxeY5d+MNz2O8x3Dl8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0df8116-efd08af8-165d-4054-920a-47af1986a728-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 156fe2a9c7433f3cea57f21f071d12d5f062321c39e8411df936e8ce69cb6f28
Date: Wed, 11 May 2022 02:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652234879
