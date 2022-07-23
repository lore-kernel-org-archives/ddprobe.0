Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DD37E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658618212;
	h=To:Subject:From:Message-Id:Date;
	bh=cWxcO36uuPdfTDAe0IjEfoHHnBLebA/XTSfxxJ8cZ0g=;
	b=KFfxLTkRmyexowh+YQCP8/7r9YbnT/tgRxVtcP0jnnQwTcs4tHlEBxg8stntKlnw
	qN+OPjBwSvSyqvlvETLugChIapaFssysHak+5EweZSx3/DZiYSwdLc0XxLwyygYjaBB
	vpn9jNuL1/7/hr0RI1V0vDXOaduMrpbwVQGHP540=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658618212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cWxcO36uuPdfTDAe0IjEfoHHnBLebA/XTSfxxJ8cZ0g=;
	b=ed1d56W8sDnENaCQ9FRw5lsE0Jk7+o5klnbbxFmQtdOmahmmLaG5sno91UXKdx6P
	Lb+pR7tM9zn4TiqB7iKsEag0xLlwJJCxstd22aMH4V2DaEyVFxHYP+4o2FBaExUCBBF
	Bxbd0uzLHFzgLyGTyFMMVbe9GNWDdw/sJLLSjB44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d596fe0-f5ea5447-73f2-4d4b-8d1e-47ebf860bd27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aac0c775d869d8d821f08896fbe03c7f70e399d21fffd1427d0cdca4a3d74dcf
Date: Sat, 23 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658618212
