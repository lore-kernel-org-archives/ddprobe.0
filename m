Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596CCA54
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661242852;
	h=To:Subject:From:Message-Id:Date;
	bh=Zr+h1SxG4P3C3XoSS4MKcoMgI0JU3QwKZ3ggvh34tms=;
	b=IfDTT7aB1b8USfZtXTXCRnJ1Wde+WJmLFLN6Liu7lJU0BH+9wVipugNCXMvABrlA
	xWCaYjom1OghUJX8Cj+ItyPI4R7uzKIm4S2czO40FjM5y3OPqoJ9cekFsTqzYmezKAh
	rqqmYtJ7kNTykmkAruqnq9a2zBZLvaH6ybXvP/UE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661242852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zr+h1SxG4P3C3XoSS4MKcoMgI0JU3QwKZ3ggvh34tms=;
	b=BbAwE7NYMuTY7zCNvThlJw5JkoHz+jB+Hj5Wjb3rbJOPpAIS+EcKVAG3LjMBCI+i
	bI7YA+y2a6vorJAvvdP6cpLNTdo1nmatdPLFRrI0hVQNWDdEki9QKup2oGkVX+GTiuo
	z4q3nnZ+CfYD4oNx66Pzt6HgCcA4ghRXIay1Chak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9ca44d8-affe0d05-c771-4e3a-858e-4274a4af961e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abe5a78cf38e8edf6f1e261090409c9e307ab5cfa4cf32a0b83566892b656996
Date: Tue, 23 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661242852
