Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D1A7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652867999;
	h=To:Subject:From:Message-Id:Date;
	bh=FC2NQ+ooTk/AyPaBPP7lF2lyX/RCXJQ5c7+zCWFtkmw=;
	b=IxrpGM8nK3qyxtuzIzxy6HUtsFULGGbsQr4Q3yGlRn3UlIrRk2iTymWda+eNMFI0
	jcM4knze/iaBAM4fD29ew7hHW6Q0jGJ4XJJgtzBbdMWz6OUcK6CHJuAnU9NLdmg8Svk
	6t+ov6Ox7xUgGPC8j6Y2uDc8WU7fwTyu8iWWgzC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652867999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FC2NQ+ooTk/AyPaBPP7lF2lyX/RCXJQ5c7+zCWFtkmw=;
	b=lCyrvIUAdM73BPF1Vs9ztHxvBz2hxOO/U/0AmSOFMV/kPX7juqiaSSc2Hcvr7o2b
	+x/05IRQr74Zx4o+M3ytNrPp2lj1HC6ETDJhqdpSmwVi7DYg0bcdPxFvEisjCGa6yDI
	3UJNyO0axH9sMTWh4/OeoqVfkl6dw0Nt8UbeubqY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d69c2622-1a04375a-8c8a-4728-aeed-1b3bbccd8577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4496870e38edcf7de2d08ab6df26ed37cb948cc6456735bc39f850a0f625a7b4
Date: Wed, 18 May 2022 09:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652867999
