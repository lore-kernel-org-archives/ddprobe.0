Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D067A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658827012;
	h=To:Subject:From:Message-Id:Date;
	bh=8LLM9T0y8K2o4U6D0X3N55igJlq5jtKeZjDoJPHSKDg=;
	b=lXaXbxMZqA+tYKgybSFheTQMdRhkTTSEG+e4wajom7BC9qoA5io1tyU4d1r0YBcg
	ww0ImwL+5WdxTpr4hi4jnr24qU8SCyHK1x7SZrGRMiI+OOEGVV3lWaFtHd0Q9TM987F
	oaeogHPUmPwWOPdXxbts9yIU9ILgeEw9bhTc5Z48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658827012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8LLM9T0y8K2o4U6D0X3N55igJlq5jtKeZjDoJPHSKDg=;
	b=ZN+uZcLij7BJMc/q299aAMi6Z8Rv9mjAGfF8KaGJhIvjImbcFXcZHk2MB58DcSmA
	VnyyF03Ju7MfLa/JdQ824kgQtfI7yZXv6HMRS/0Yj37Qr2jnLADmFbOixRcsQ4+SyAB
	OEdP468pyHS7QXiNjc6ZS8NmcljpuW3b7t+kT5JE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239cb78f4-919ea49e-92d3-4ba7-9d95-7c3a08fc6536-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6873bf51741af62c8b000841c7d46812314f4dfbfc2cfd63ef6d745d95c8670a
Date: Tue, 26 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658827012
