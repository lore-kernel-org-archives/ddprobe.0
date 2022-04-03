Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AAC7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 04:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648958458;
	h=To:Subject:From:Message-Id:Date;
	bh=MJSkcNj5qFRgOUKDdRrwRyDIL0vBWj8Mh+zs5HimTQA=;
	b=fuEOHD8TQ1WHQ+gYhE6PCgn1u8cwsqMznQ5wNzJqROEOLwLzK4om6QCyviqWGN+V
	Ulm6MEY+wvncTZbD/nna1zpi0H3UR7UyPdlOVBQaa5KyA8QkDfJiFcIqcagMoH94vtG
	smnoMoMIhheJuSktj9L66TD+5Td4D0FhFNTbeA+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648958458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MJSkcNj5qFRgOUKDdRrwRyDIL0vBWj8Mh+zs5HimTQA=;
	b=eEHR29JtcWO4UADOcOxVJiGgYVj3wE8AUGElE0wUcPdwnZUSSlTfesy4KxUAz3qZ
	l91MRso8E3cHsyuunWxJJ0aQ1f79X9/YgAGLgmrjnTNHPtvrxPR2WjBMTRv63WAcT2A
	psi0HaQiIh7fc3NVpeRXGNrT+0lsbiqIcBLY0bpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed9549b3-cdd8076a-6605-4953-b370-96830d743c79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d568fdd33e67dbb3864bacf4a29e83dcbe7fa37e27944b3c7d35a43b7c53658
Date: Sun, 3 Apr 2022 04:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648958458
