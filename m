Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B73A31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647940885;
	h=To:Subject:From:Message-Id:Date;
	bh=/eZRWodWe/nVIU1XPJqWt4ay/WtDC8V6mRlmogAnJHs=;
	b=ST/Q4+pOH7vtXccFFkvORqfD90MfOpVoeuWQR7HAZJZX6v0iUFSjwoVfQcvUDIgJ
	zTeAKJcmfx9yy0xQiu49sH5w7WAN9iYxoXAn+3iNGPTYSngHO6CX6U4BUzeg7uAnthu
	iJCKAHGaLp1ApaSXuiUV+Uv9Ri2ag7/g4Jvc1l94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647940885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/eZRWodWe/nVIU1XPJqWt4ay/WtDC8V6mRlmogAnJHs=;
	b=doVd1x0W9XT5VVPHLOqVdbAZrBkZpPkQO0bTRAHUoa1AJkYGdtRUUNPvbxTn1uOE
	c1Fp4ACF++EYNQmAvwEQ+W5vBCUEKyNXWaYBxWmtanor3vPFD6+NdVGecmGgfDF2goy
	mUxs1JPy++pOIT+Ye8ct87V83D1IAkPPpgUktnRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0ee58e6-5e1ddfe0-af48-4adf-92eb-14a72c6ee5ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1aa5e1111a6ea355d3dbd8686d6a1acc73c1413c1ca7a429a18348f86465890c
Date: Tue, 22 Mar 2022 09:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647940884
