Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701EC36C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 06:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653285779;
	h=To:Subject:From:Message-Id:Date;
	bh=22081uHq9wdLGvJj5GA+v4L2pt14NsDG8quEHtmmhCw=;
	b=VDBoZCeozLC1wUEwM0XAEnJ+LxCDa2IpLQdAjLBnE9/QhJVEJYnlGpyMsbdXU+uM
	hqWbYc99UVzEaPvfcsvuPOIMTZNyrgaDLrV9PT2cPrkAaZk0Jci1hZhOq1oGJ+KhSZs
	arl18wFMmd1eD+qdV8HMex+pMdMmKG6wqABdfTu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653285779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=22081uHq9wdLGvJj5GA+v4L2pt14NsDG8quEHtmmhCw=;
	b=CUeMS/NLRKFLJHAsPJX0IeZ4afmo6g2kOWGAga7Cq1wyI7vNqGT3gU8OXYgdj/wa
	aKmD9zVITjUuQX8i8KXVvgbk38xnWfWSCGkLftk42b/YdM44o77xlueI62dLY0jWx1H
	2vhNs0xBTHuUWAr+PMA2wxavCdzLU1V7hkZmNgtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef82f728-40036848-8532-4246-96a3-f883ab16ce77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 224075eb587593383329d778f6281ea0ddf997dcafc5e9495bb9f75132862e68
Date: Mon, 23 May 2022 06:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653285779
