Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709D42572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647758784;
	h=To:Subject:From:Message-Id:Date;
	bh=2jym4KsfO1bMJjl8Kh8ygcOb8+hndrg54kUJirqiX9I=;
	b=PfwMPM1krG4/JZm+jvpdWvk+0G9prPpVdmQ/JZ1Ga1yCEF/B/j+vCf8k7jQyH0iK
	Kl1i/8Cp536GTCgIGVVeECn/e/3FIqWUHpuEbGUMw1gZoxfX6e78MTE8SibaqYPRSXo
	WWBuK4fAXoOW/EXjmAuWeRveZZe+aDU7MZuzABis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647758784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2jym4KsfO1bMJjl8Kh8ygcOb8+hndrg54kUJirqiX9I=;
	b=O8wROwmh3KVoG1RgvG/vgw7P2wDof+2KPuXFd7ODLbPA8RtPZFvKbEuFhIVNwvGf
	xaWvj56xWueThMreGx82dvrZRFOu5BCLI5Y91Zxq85ra6JQlcUcvLc/RAZFLJy77cRK
	yEvXDHWs2+oy9sISdofd7jzJ/qROf8vomW/t4Jb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa613b8e1-36287b3d-76b1-4972-8b85-13aa8fe6ade0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6a1091af89640d0bf45d2b6131b9edac44019f8e351844885f11c4bce7d525d
Date: Sun, 20 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647758784
