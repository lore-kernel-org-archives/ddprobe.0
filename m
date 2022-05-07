Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CD3EC8
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 10:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651918018;
	h=To:Subject:From:Message-Id:Date;
	bh=o5gRoxi/p5YYSWFNbI8D1DsFiDGAFZjYyGC0uPUOsXk=;
	b=TJQzawKeIcSkt4SmaBnCTjt5l6t4PHx4CvB7Rf8k2nklRU4dzSFYU+MnvqtT+RL1
	llMA0hp44P73PqfOwV+aon5YdgCVoVW63+CyD8mD734lcTlezyz9AbdQhi6O2hHwBs1
	GKxuowbPF3ChcPlxnKgMYOQMfwucahDrfCNgGKAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651918018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o5gRoxi/p5YYSWFNbI8D1DsFiDGAFZjYyGC0uPUOsXk=;
	b=jJBLTfILnRLUJxVj1UxYJ94e9uJ7953pP3WfcQG3DUH6GUtpcpXMjkm+LyH2hkvJ
	gdkxMQmhEvJZWDljRtZMU8idNo6vdAouOcpl64hyFs7yMwpyNlWiUu4ssuZrs+NR0WM
	1ZglFgzwGhnnaiZNXP1Nm1RLI+LAYz5msOKtI85U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809dfc96ea-029834ef-9b28-42ec-b93e-7e82f6cd69ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8afc64100d466884b2cbc0a1ffcf69c09532d69c7a5345580de98bba1ca04761
Date: Sat, 7 May 2022 10:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651918018
