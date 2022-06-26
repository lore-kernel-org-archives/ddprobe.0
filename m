Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F94D7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656205612;
	h=To:Subject:From:Message-Id:Date;
	bh=tiF+UdPr5xiUdCck0MS6my0863VAvG3qyZ1fkgqSDJc=;
	b=WgzEBLCm2SL80KCxcyBS/xTo6BWLNxiGIKf3ud9qCEAvTbokTzAhgGKyLh+nYRq5
	IGi7kFL0FdQC/KYfsHDpXmQXm2/bNHoXdIuGyBdQ3nj5AsRMe+veHESytKXBZ7OdAhy
	Jr+Avy8NIOnHHawDyMCrJKl5OSKXazsecrNHJ4vY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656205612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tiF+UdPr5xiUdCck0MS6my0863VAvG3qyZ1fkgqSDJc=;
	b=jPkN7uuhClDHTvhJMm9cwgifpm7EpB13KhYE/yJdY8VCFVCwadxca78anbPAkKiF
	guZP17ocoQBLDrVIOmFHWc/VBKNH2jT6dhau0ak2rllLaOLRLyFTMTnLU5tmzcbekAV
	bUKPetlxNsi84NopdOEu+OQHZa5hlzYSAaVx523s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d8c1525-d3d12418-38f3-40dc-bc1b-24b4565e225b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfaab713a86fd791873f33393560a9b9afbb05d0115310a076bd1424e534ef0e
Date: Sun, 26 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656205612
