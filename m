Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E681F620
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 08:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654936319;
	h=To:Subject:From:Message-Id:Date;
	bh=VBLg3TMK3vTvt8orzFoQyK/TmxWudZXiGvu5a7X/RoA=;
	b=aeJALv4DOQ060HLQ14hfSjhgs7SwoIbuS2sjfVbXNxw1oJoCutWqylI/OaNVtjVf
	oDpsDTyuCQbhrqb/tTSJVGVAgVfbuJRlk32L5ASYra8A6J00fzPXUwFb0d4NqJI9vjh
	rf+4olx2oDV+3qbmCp88KrsvUOyK5NuzA6ODcN4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654936319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VBLg3TMK3vTvt8orzFoQyK/TmxWudZXiGvu5a7X/RoA=;
	b=S8TT65k9Vq/b4a8hwXAmKORIuusztIcrWzSHX9LBCQnKYmil0LIZTueWeE1x1691
	Vwx7+oCDiYPLGRDdrJ4+T8xcILxsml3bv2t7QpZPaSWo1w1Wnm9h5zuk/Gst9M422Os
	LqqkTEKF9qsW3kOG5HuJyWdjMWoCySht9pjBjtEc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151e4350b-c6509cb9-038a-47fb-b85d-ab17eaff0f3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e16fb6e0588324c83749bb612d1955a1daecf2b90b031f7f995010a3b632c3dc
Date: Sat, 11 Jun 2022 08:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654936319
