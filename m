Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D99D2F46
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 23:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653865799;
	h=To:Subject:From:Message-Id:Date;
	bh=sCesaW9hia2eDrtor5e7V5wruVnEtDp19Ifu8POBjfY=;
	b=WNCcNP2iDlutRKsvB3rITRXD9etHsbnjwg45/xZxhy+3Uo3OC3GjPWyYHvpbOOm4
	eBWmcTm19uPKLEaLFJKhUMStNy2ppfJpb2xXjz8pYTHjX4QEEkS+zHsJWAhQRsZcwem
	oAyAGkW8YkEmNYPsFWhbrfNViv0FcSM4zLuspKZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653865799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sCesaW9hia2eDrtor5e7V5wruVnEtDp19Ifu8POBjfY=;
	b=UDO9LS6y5feO+VAVw3lum65LYR1Yvkt66979o8cotQ+YbJQVpcvb0n/l2u0zTqN7
	f/4LQLqfJNmHNO3cRs655YyIKz+La7yR9mdZASO5ZwP05VQR9KroWLLTowW6TVCnlLu
	Ym1+BqjMsa0GZSu4r7EyrEOHfxKJCZ+CYCH8mV0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112155ec6-46138707-0473-4d4f-9629-0f7f89127a1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c043becbd505197f7b7e032a2c007d524bad1aeb108e89477ac97a946436a2f
Date: Sun, 29 May 2022 23:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653865799
