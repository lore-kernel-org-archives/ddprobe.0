Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A91536D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 00:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652488799;
	h=To:Subject:From:Message-Id:Date;
	bh=qDwsl1WNK8jctIHgRFAywfgvLSEXYBgc+iLKXFSBTzo=;
	b=S1rxxsahNtS3mENbyYDb2mkg9uBZpnu5RlkowY5bDbGrvCHV04TWEOaWS8cfFk1Y
	zL8z8cr8O2PSGS0dWMC7FcMiDNT5tZHke4hIeBINTwQhS2eg2QNc4ommnaN3ayN2x/B
	mj/hMfmDZhvkyCc97zUaM5aYYs8UQaclQrUwl+BQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652488799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qDwsl1WNK8jctIHgRFAywfgvLSEXYBgc+iLKXFSBTzo=;
	b=i4SOXYCZLBE4iEa0inxz5Ln0/ZH0M5cZqDbDWBOdyxblX13ANMKsA2ndC2tblDFT
	u/Ch7WiNAugmNo/gNi+xVp9TZNTu5q/rdgm7jqdnOyJGdYOyuNKYre5Wuc6neYAt1pg
	TrCDSxgE3ofvo4NkW4yPXL4NN3gxiPU24v1IiEBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c002043b-6b843d90-a556-43ef-a443-8f7f1b864709-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cd4c7d1f3e8cff60f15d315897d16098a520047a857e21970029c658fd858eb
Date: Sat, 14 May 2022 00:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652488799
