Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F8739B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 16:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648657858;
	h=To:Subject:From:Message-Id:Date;
	bh=y70yj8EjGLkxujrhu7VcXTcMRR7GnWpNkJCtvaYw37M=;
	b=FI1mSludnYufXn7qPrJbWXiYGDwRdbGTCBwbv4srLYT0rCdR5mBHBdBPsfQpwDU3
	IsVf27I/UMo9N8RtI9cojdazgIjslNZPvrsggQdXR/cffDDIbWM56uoi+fkfWEMXRyX
	I0c48UsVqcDdfZMw5RRorzWjr/HW/Ajq+4uzUE68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648657858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y70yj8EjGLkxujrhu7VcXTcMRR7GnWpNkJCtvaYw37M=;
	b=bk0D86cEz0f7Orc86HkkNGR50KdmdHUPXPFNsZEXbaNf3WhtVsSVusTaeLLncQad
	ciJvoR5Dd2rDwz19sYWNIchbdcBW22DK0c3YjcZ2y9oNgdS0iB1zW1DOQpvqU3n9NK+
	cb9Eab29bMT4A+6hxKi1bg6YA7govLjL7Ty+MHw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdbaa7ee7-18f10f55-dc72-4e50-8dce-246ab0d44b08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4c1bbdf8882fb75dd5b73bf12132f2a4ecf53fbf112e36b28f5736b1f150ae6
Date: Wed, 30 Mar 2022 16:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648657858
