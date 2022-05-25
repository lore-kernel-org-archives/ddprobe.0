Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6B2569
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653515939;
	h=To:Subject:From:Message-Id:Date;
	bh=TnOS+LS/hagxEAarwZCMNGQNgAk7EUknrW0pqpA+EIw=;
	b=B6puqpO3XZgzSjAmyjr2mSLs2vCT93A3AIk+lhBBru3AkYQviFuDxO/RzOzL+uzV
	2MNqjqtNFIWh4hW7LYSRepNLfvEyp/qC6ixCpZRqnBJJFkZrmxreAVBRFw/mRF5kqgT
	KLo2lnMMvtYKfrelsnhx14+o0zDTa9KlE9zEP/A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653515939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TnOS+LS/hagxEAarwZCMNGQNgAk7EUknrW0pqpA+EIw=;
	b=bJloIWXdcf8lix/gPuCBdaOoiRiNBBjwAnXsidwGGqEpDq4NDWOKSuDyiIVCQakt
	S8wDCid1KCPUVzo7miBs1eNLAs97XUZ8FiNtd4roYa2EGWbMo1PVmjik+ZXHH5MOkt4
	XsnjILo/obss78T7zsmAJLrn1ROEi2az+FOd/j58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd3aedde-60afc6f7-287c-487b-a290-2edd485a5237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4f553226881979c72a2f3bb28aed58011748ba44886fac1b51cd85ffe0f6845
Date: Wed, 25 May 2022 21:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653515939
