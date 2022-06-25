Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CA87A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656168412;
	h=To:Subject:From:Message-Id:Date;
	bh=719Bgo/Byc698lI2Mn/0LnvVbPwVtbdagpUnDlVEfag=;
	b=XKAHoH+CJPxYmYDZM50pbw/mL1hHrKQjLu6iJ8gXHe8pIENSieO5wBSZXveDxEnz
	AK8KGkddAzkle78fPX3YcJBgEm/pN3ogszsxpjkxmXwweR01JiYX1EmLcZq/xMKE/PT
	/wW87DZj9oTvgkF+boIX0Egi/tQ5NggITw6f7m8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656168412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=719Bgo/Byc698lI2Mn/0LnvVbPwVtbdagpUnDlVEfag=;
	b=ctFhhOF3ovIyqk5lqA814fxJNFSxTKlYFQihP1d/wC53zEdmf+Lv2MSZdy49IR6q
	v6twoBeUSbv0e1uoVisfTG/bs9Wo83eFP5r1wXHnLSVtEfOJXNKreNWn9bNet3F7K75
	CasUGNvkkRAhOstg5sTfSjCPmASrRQrgjCyDuo6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b5474ad-f088bac2-f767-49b1-95af-c347b9f14eb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a4f20a58ce9b30d9e41553a1f90542265661336a83b46805cb3c99f4ab8678a
Date: Sat, 25 Jun 2022 14:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656168412
