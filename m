Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D84681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657646812;
	h=To:Subject:From:Message-Id:Date;
	bh=rcvfyvqwrcB16ZAk24oMIM/OE0k9GIMJg/MsjB3PYLA=;
	b=C1zT5bibPoMsqTPNadxFgIVSZXTXxdXxCM9cGu/o5/17lWh7WpK4zsyOy8RcSRqL
	ZN0vEamSK6OPCIZtuXHf13t4G5/mE+4QES2LaBcxm3klNKWq3Z8v0AO+ZDfK0/gsTbW
	MiB1iW/2egwYDx/klmrh+DvuMJtTRi3L1axaH4F4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657646812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rcvfyvqwrcB16ZAk24oMIM/OE0k9GIMJg/MsjB3PYLA=;
	b=bHku6GBNcJOv6vroR93VqwElAkfH9AhyTGUBGoIsHybbmNYKHWN2qYQz0rkdDYYF
	3nrvUhqHTadMI2d4vsJooJpX/rHFf9qZYMEsP1ryK8anWO2FWk4fVMI4pZTem5EyiyY
	61g7aJxCxQswcnzpKdzc0QQrWCkpmJYLCgqj2CKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3730ccd-4190704f-3170-4d81-ba34-372a8d14723c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50cf93f29a1cadb65b631e78f256deaba1cd2394a95780b5091be6784c4346e2
Date: Tue, 12 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657646812
