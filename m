Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EC2A52
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 08:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655021399;
	h=To:Subject:From:Message-Id:Date;
	bh=mIZa/xoT5+P1A4PJXID89zIRX1/bFLjq4XL98XGuGvY=;
	b=ICNSNP5r7FmsuIrBCJEFamz5awG3AWWeb3S7aPjC85KylfWgNqqHeZqMje/VXMvi
	1q1NoICusVZKXxxMz9BIOp01QVAhCEa+PYcuVF+eDJeC9UNPDmz/epJ1+3AKkAL2hdZ
	HrLY+91AFOPI96VhZE6ACoxnzlzgnuMhJoXsc/No=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655021399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIZa/xoT5+P1A4PJXID89zIRX1/bFLjq4XL98XGuGvY=;
	b=HY3WD94kPUl2wYhMfP0wFX/s7d3B0PS/Tqsor25gZYXCijvGBzBiBterGzs/lHO0
	TTveRv92EBIdEQLrR1ui3RFnelElj9SwIns8Xu0liDE4nsZRwRBQFJWYSgOTX7yViu+
	uztgCEhUp/MtPISviBQ991PlZUEferZbwK6SfFIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156f66d32-1dc711ae-4c17-45c8-a038-efdb357105f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ecfdab4e07f3d83f5cddeae4455f56bf7f1e50192a0cd8f33e71c4ba3a70276
Date: Sun, 12 Jun 2022 08:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655021399
