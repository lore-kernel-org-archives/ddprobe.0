Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112F9180
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658666212;
	h=To:Subject:From:Message-Id:Date;
	bh=K3liJpFFb7zIfLAnJ0rXH44Kx0FVI+3D9T3FpaXJhJY=;
	b=XHxAvhUZ3Xs8RYJrz5mtsgXrfFXzmkBDXxwwH8RoGa7o5R0S1Vg2O3uydalfVGDB
	6ZF/W7v89GMTIaZUApika0dd+xg7Wi8nuAe0/AXHg3Z12ou5N4UUZ9IsXDTmf9Lozn7
	54ex/ypiSztNEsHUjuq2ky87tFnWcE8As37JPTzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658666212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K3liJpFFb7zIfLAnJ0rXH44Kx0FVI+3D9T3FpaXJhJY=;
	b=Y9SM5BsGFZIlkUx+BNcm7KKi8jIdk8xmImC/L9nqw4KVsI/Bv1kfakNrNfIYyAqG
	RaXbHroNQJundKs4ag0sXQVsDdzlxRZ6kjiE4hnC3Ja0FK7+4LZSAhFk4tsxYWjCV+g
	uE2lZVfW5RtgP/2cUU2HZX2xEjVFSCzfkkWNGX4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823035dbe2-c7663204-988d-47c4-8dd1-038fecf2f7c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14cfb2cd956298d47aed2b926b273d719318e154a5bc0eeec66675a057a0b1ae
Date: Sun, 24 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658666212
