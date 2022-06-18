Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A337B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655526479;
	h=To:Subject:From:Message-Id:Date;
	bh=rCEyXQQRs3Xh6dm4adL7anZ0Zy5s0lGCbEx32UpoxRc=;
	b=ECDKZ/5icUuqaqaPFzFSc7BKmCVxfZOkU/RRGrV0Atxxa79Gr4gMsp3DNC/AOSXg
	mNdpW+vq3AS5pOCfqZvySsBTo1n8zNWD32jlmXWWcg3IwFwbB4NdoWYHhhxnKQZRCeV
	1L6/jg6zYQF6U4bK6FGLddQeOHhRfw+361nnViUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655526479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rCEyXQQRs3Xh6dm4adL7anZ0Zy5s0lGCbEx32UpoxRc=;
	b=JxgjEoToxCVBQGMcPEpH8uuN+CJhBwIxZ+6+aqcZmUpV90buJIawLCdhaw4qnhRw
	qvx0fdzPwiXa7op0I+kERUNlYcZc12w5FfRtQhU9VGnPyfbHJZClxFpoMHsitAY0jRY
	8kpXQHtJsrT2LjUfdKbcqskgee2V5t/jzFUViJCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175115581-ff7ea615-db7f-4603-bc99-8e7bcdc4735d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86fa5d8dc288ee45fea66610613aff8bd997a2eac6b2f97194227fe15b357ff7
Date: Sat, 18 Jun 2022 04:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655526479
