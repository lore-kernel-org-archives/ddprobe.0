Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FE27B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658345212;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7XENc7erinVmxcZdMlwbALCIDNgZAEfA+Xw6oV5uYo=;
	b=i9IeRTeNJruXptHoIiVzCQrJ4hUtFjjktBVA/qtNrOYuCaezorUk/OXmDzLgaB7a
	lLDLWYwo+SBu+Z5YeeB3Bn2Ff4CMWDp310sgbq2ykJ9aOwozKJjuikLzpO8Tixk/Dvg
	mLSqZwcDW5IKW8tTcSH9BJ2Rq+6UsSc/4rUMnFZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658345212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7XENc7erinVmxcZdMlwbALCIDNgZAEfA+Xw6oV5uYo=;
	b=fBGREriLwgArVwrD8FUIabJIfG+DKFO+1YhZ6HduP7IoqFxFj8N7AMD8JZWkCNat
	SoRDzdHVuCll2dzjmRgPJ177eL24M+jUhFQvw9abzhlRsHHjFQrAaFNnSdRlTa/rgd/
	hSts55175FW+8QPminoA6aMtJKM7I2YoIJOhhEmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d13c944-2f019b22-cc83-48c4-b003-5c92b1f99769-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3d57606b0318329563adc3be3f5e643724a793a4c341a693c614d33d797626f
Date: Wed, 20 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658345212
