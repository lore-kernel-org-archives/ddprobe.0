Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751E815A3
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 13:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649941918;
	h=To:Subject:From:Message-Id:Date;
	bh=RQKKBx8mnnAVxlIs10HYqxjdUIeSqqsBZttrwX5x9GQ=;
	b=Ah0PhD9/jN9H7stl69lv8M51hPA7o5LCh42st4YqaRBBZkMbKkcoaYOih7cOkPLo
	y9E2RY7XHeFAt4y5fxenh+NIYBXM9U7l45SapNyTxBM36zrkdgANpPzyo2xoAYOjKeF
	u0Wrqr1bD9oK8GmA0ubeQiczLDjfwqoTu2As9km8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649941918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RQKKBx8mnnAVxlIs10HYqxjdUIeSqqsBZttrwX5x9GQ=;
	b=d8742EIBWlX6WZyX63ZhVoL0DBxtAZfnA2H/GPruLS8Fs5MaOXBBdfpkr/ahpya2
	IPN3yDEuHVtZaypHMI5540Hw0v5XZO+1C9nii9te5QRF6E6MD/lUo29/OxswN42ONXo
	VJokS+s2QxxI2+wVPRW38i1vgA0UhJ7qTzwKHcJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802833b280-6ff4767b-799e-43b4-9de1-fedacf269496-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6df06f272e1f8f30e990b378030eb88a7ce61767ad1470c7fd799f002097e926
Date: Thu, 14 Apr 2022 13:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649941918
