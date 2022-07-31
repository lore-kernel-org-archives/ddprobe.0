Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B415AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659252652;
	h=To:Subject:From:Message-Id:Date;
	bh=6VCK6Qii+AMHRp4cZ/e87yO7VOTL+7x8BhH3SxFTxEw=;
	b=JlSVAiEHWqP1G4+X+5+gITTP7+oU5Rcr5qtZFZXBN78iR5/vm9PGw7rCWUdovp+E
	woDCh/3LNCP5OrfgSid0fdsLSwl9K3mSyTvobZp2kvLzJNGax5+RN4aUGnVtCMsKkIf
	CWI9jp7pa/DrdTmRwgzo5l/DIMpr1ed4KySr/okE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659252652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6VCK6Qii+AMHRp4cZ/e87yO7VOTL+7x8BhH3SxFTxEw=;
	b=ZH+XzTE9N6QbxgLzVBc+LjQ96AQPFgyJHiH8cUMPp7jFiKKwgwSjOD6JLCv/hB2K
	PmsnB25hAkG/sYv3qZ2glSnChBvTkMe6/v29bUe/0tZ79+n8/j3/8shXBP3SUVTQ1l4
	NkY+dQ7OULH5PDnWiTpCfQq2LLKoppjOUz9QRi1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182532a39fb-cd4979c5-72b8-4679-9f61-351a046bedc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3323d0f352706d96016044f36d6d9e951cc82930a06932940e414e4419a6387c
Date: Sun, 31 Jul 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659252652
