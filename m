Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B8362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657958212;
	h=To:Subject:From:Message-Id:Date;
	bh=o7Cyxontte45/YvpoCDpayYmFMdiVNepb4OA4nhL/4M=;
	b=Koi9j54MvKDcAU+/dHxVuz/GNO2kj8z4sEdr5FhpfznYHYbiu2ZBsr5QsmlukGxl
	30mROwjD4CD7iMqtmKyPu2rv1VW1WTZMbNwqpXaXG+5aIo+4sISDzIMaRApCCVAlqrZ
	4h3S/y73vz6X/+ypKU7ByXgviXmUINYfwxf0ftFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657958212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7Cyxontte45/YvpoCDpayYmFMdiVNepb4OA4nhL/4M=;
	b=JfAu523vREiumNuMH9/Q4+KTVx23RbG9oW5s+DwHyjgMJfS5RrG4DS18K1ZBoz3g
	55BoqrgyC84frVNwQw28hqj7y8yLW2EfAW/qo9cpO7oyQgvTCXdRCesiAjWTFC+Pkl5
	aSkMhM29pjCxFxkEYXMH5U4uOwi+X79rw+w5+ayo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820602a2ed-ed319150-6490-45ae-909c-549ea08dfcd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab9cd094321c5f29187a808681abcc9d6eb73aa5ba4982468b90abd6f8c04947
Date: Sat, 16 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657958212
