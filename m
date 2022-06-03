Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143B91367
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 17:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654276739;
	h=To:Subject:From:Message-Id:Date;
	bh=DjxCTqb/NedisFS4PI907FQ328XLSn2R7dyfbclOm7c=;
	b=AZEe80ekyMv2wwCw88zeSJWPR/xylmZ4lZyWbtk66GYPHZ51TBMIzpKTj9m3qLEo
	ktYQWyMjhANCVtRmxjqQ5QiwWObIjjTSN2L562+8GAK7goHAWCUR/w0k3Z3fybnC0rX
	CFcOzmEbBp4wxnegXEpmTwj8F7dK4QBoLch29O5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654276739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DjxCTqb/NedisFS4PI907FQ328XLSn2R7dyfbclOm7c=;
	b=UH8Ctf6im0GNBkvIJOyifyLi2593DD++1aoV7la34EZqAJmTnlEyDQJakt9exdRI
	A0z4pFPqq7Z1Mce7JTf5sJLE5egbheEAZXL5rwgZXheHkjbpkT+Us7fOut3wxgUucqm
	mPDEgMRUNKDWInfQNh9fr82vF+w5H91OC7Qqr/Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a93d0a2-54011bf2-8b33-4a16-aacf-29f207af43b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72668504f3277546cee89fc7a38f8d8f2ec30eb6abd3d9e6d492116b94986e50
Date: Fri, 3 Jun 2022 17:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654276739
