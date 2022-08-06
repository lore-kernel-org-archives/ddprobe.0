Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574B6139A
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659825652;
	h=To:Subject:From:Message-Id:Date;
	bh=N5XT05qYjLwij9VeuL7yWxbFPdUiS4VArfSEsPctNvo=;
	b=KhS3+yQXpL4Esjgh4rjQVsTV2r4sq9wPPvbHm95DnE6tBbczQk/7aTRjKwRMBC+a
	pCaxLvMpLdlJJkYFmqBjl19FhToIBCI7A1WjbFxIIK7oLF3NyNsTdS6Rb1z4+MJq5ky
	smOuQ5MUvzHZOy9Y2vzzXRpEKBra/vNUNtw2xAxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659825652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N5XT05qYjLwij9VeuL7yWxbFPdUiS4VArfSEsPctNvo=;
	b=H2bcjsz1FioSG6HkOL31QgLSbUjxBflWfexGGh+j0aP9aM/iq3aXkzUQRyLVpwt5
	rSkJXwfTEUzogm0wOptADl80nCQ71oFSQyMB5Noab4gfhx4HKOWmp4/yNPgRUahseDF
	ZaStmUaHnf+1dwMlNFq0u8Ya7nZOwMDPbvzAXhxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275518361-1ead7ca9-1c1c-4e39-a944-3aabd9442e35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac709918a108dae7c4b5b353e7d8d29efcb271f403b70309fa3ecf2a4eb2ee26
Date: Sat, 6 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659825652
