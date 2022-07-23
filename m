Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F54F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658541412;
	h=To:Subject:From:Message-Id:Date;
	bh=LVV/scQqOCAEtGwiw2lPwc0MtwwVvQArRrSLz4hqDeg=;
	b=X3iA6Fyuub/w8qxp/Ydf8H7+OLmwsdUJLy55KDCEfFQ55Yx0f71fBvz/88EfvtW7
	XDrfq3Ze0J+kKVMUobkzRuieWrCufkZrMrUBbHp41nzZNdro9TI0JJKiDhpmBmDdgum
	Jc6JG3VInrn1wkbRazAanxhyx3Pcm/G+zm08eOB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658541412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LVV/scQqOCAEtGwiw2lPwc0MtwwVvQArRrSLz4hqDeg=;
	b=Qs+4yVUL5kxjZPTr0zgHDkRdLm6DRlseY4QMDqPfPhue0uY+q6LAU7pL3NGDjxPj
	KIvFU8tx5TMDQkCDt1rOMJRMbexUFKP6yIgMnv4s+klqKhLfRpiim4rJdiOAdljARVX
	Rzj+XlnmIiyQDPuC9WddpGSD2I03vWCPcXmfr7PM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228c58ff5-22e6344d-0942-4406-8c84-f781985e720f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34f966418180fd26954b6b6524c62ec8c71dbca23dd3d9e717e88ff22fe654fe
Date: Sat, 23 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658541412
