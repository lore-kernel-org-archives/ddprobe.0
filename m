Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A4E7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645575685;
	h=To:Subject:From:Message-Id:Date;
	bh=ZvpYjWYnQLD83xxZlbbZsE2vKjqQ6KOOfL/F/Ekdvp0=;
	b=Ws7FJ8Rx0aAzoH/2ou3UqtANviTSn9Ovqghy0KZf49y0KvF6s2wEMPAwwNHyFTFn
	9yxXEiM23rsaVmuEdRC1aV0PDqWKnRfVOv10mRWEi3QXhLnVHSnJTd4u0JH1mfYWwHP
	icOt7vBD+RvUNLyaCGynGHUAj0OWbVO3Yl/sBESw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645575685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZvpYjWYnQLD83xxZlbbZsE2vKjqQ6KOOfL/F/Ekdvp0=;
	b=mApwHAXHrtITgtoJ669LHl9cmDjGRon9iQAaUnKQ3e6ViR9JHyZO8wer5RFT+26A
	O5TD5So56ajDsXb9B01psZDbPqXfHVw73DqUUj+jYpAEXdLTYxe9QaR0zPHqLStctdM
	jKuEJ3JKApYblgt+hIhwGN5KrXdrtnMbWuvHRFik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23f4432b-3f0f68fc-226d-4b8a-812c-3cd3e9d64ade-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7bc95711cfb0c66adb76004d2ea5c1af8d3a916fc9d0d4bbca517f1480aae272
Date: Wed, 23 Feb 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645575684
