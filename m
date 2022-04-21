Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2673E1FCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 16:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650558838;
	h=To:Subject:From:Message-Id:Date;
	bh=KYFtzONC81/daa/LLyIg/G6imCQ267XbOPmburB8cJw=;
	b=fdHoU5K6MdL1cXfQ/WPg4i5pMXuw8gsBhGEu50dZrqStssKyNB+Eehn9iS4voFzu
	O0KGihmjSrF0zrIZ77hEON6XRxAumrf8LCdn5JxRpMAaCVuA+ZMWHq+rsmV56eshDw+
	JaBBfqOiDn4DnSYtzuOI/YH0N99Z3jTUztkdtG6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650558838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KYFtzONC81/daa/LLyIg/G6imCQ267XbOPmburB8cJw=;
	b=JTuXFarUtf2LhIh2ISK45aKeYcIsiN7xgnhdd0k5GRqFHGULCEVygKdtsA1xdyU1
	kH6GZJ2faD+AHrFZ+fl+CXZDyEUZwJKO6lTpQpip5to517rktRH1IyMMAyfq3iKkciX
	gaa6CLXJ07F0dHcj9YV08Cmb+SKSX+GCa+6/tSD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804cf925ed-226b5698-e084-4c59-86e0-80a7db1638d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5890af97c4cd024d357661f3d48654ce8d35cfef01cef2b5646f0b8f0d062a07
Date: Thu, 21 Apr 2022 16:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650558838
