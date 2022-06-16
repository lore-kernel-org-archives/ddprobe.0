Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928AF15A4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 14:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655390039;
	h=To:Subject:From:Message-Id:Date;
	bh=xvQfQ5d9dTQPR70kz0s5naYsBf7D33HA6s5CA2zLKdc=;
	b=duUc3UxXBijunZhM1VWjALuFHxdXmmp7C0kqAV2m2GkYRm2RzVnZyPgYgSA6plHz
	peLcEGzRuBin7FR3dXqKmVxxM0jYzB8/MS/i/+DPU2gOqoerOtfJQ86q6CHFZ1vNzoT
	0DjhzrBX/uVRciMWOFAzebmYtqp/N/O0NbuDwbVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655390039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xvQfQ5d9dTQPR70kz0s5naYsBf7D33HA6s5CA2zLKdc=;
	b=ftmE351DjHkUizisIE/j9f25wKRUysCKGcH/xtgjPYNxvEaOI0C48+XbMdidNd+L
	66SOFhlbYk0q9uFCvVdaZEM4DKkybjIFoLERYBpxm0pV19u7a0wIQ6Fh04H3q+6l8UG
	KR8XyiiXLWS2HOTkEjekQa3DiypZFnKFHpRMH1xE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816cef6cec-cbc5bfbb-b82b-44a0-84c4-aec3ad37adec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78158a0ef354ba3df53dbaed55f3212e80a29bfc2ba936eee2590c834e6c5df6
Date: Thu, 16 Jun 2022 14:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655390039
