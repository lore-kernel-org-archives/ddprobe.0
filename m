Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3893110C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7394AC433B5
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670007054;
	bh=pQcReyu7OTCwk2EduSV1Lcu3Le2o87/iB3ocrF/eu7k=;
	h=To:Subject:From:Date:From;
	b=QqSBQwji2JhmZz5SUlG9qilL3Sg1DcP5y74fE2H6L6GQfYWEFdugOIM6E+OMgCTco
	 x51S9Owj6dI+RnV6OFm8XDKdV6IUPc0REx+2LDQqXKIXdQIXX38PUHjdkiU6d9FQ8j
	 FE5eZPTZgTnHmpxhrw54UckuQpWAfIMOwWnsrNnvfm54VTc3GShmrYZ6IN62MaVIPh
	 HjsuqoU7XS4H3T/Cl6u5jVHGIBNYhXJXYcibidc6WmM05XhaepnZYucq/Po2DGDkkp
	 S05aXhbu8Zyc3+ZJY1wENot/xa4WA+Gvzt5nHYJoM7f8y2Pjk/6ipqEY4Jcf2inPd3
	 M/29P9zSsTS7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F75C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000705432.32175.16441399635455190541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c46ce3a33c36197e0f64d4ec2ffde21d26d8b9331611a31a719ad7ddd860ee
Date: Fri, 02 Dec 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670007054
