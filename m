Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5262AA29
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660446652;
	h=To:Subject:From:Message-Id:Date;
	bh=lmK0oLGjzjKNvfs6j/kJLrXckZmokj0rRazHZ7cBhug=;
	b=eqKVtks8Yo3M81tOIFvZsZEBmtv0vIW/AneOruJqsFk9UwezobUAXfTlCJXy02EA
	qf0rO+DPir5cK82wMmpNvH/Fvg9I3BdpatzCBlJuA0N/zppeh7OEvXF3t2p/4DF3lwA
	SiU9MuM0O1Pwiql/4kbEf1/Bh736woAWybNzSZEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660446652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lmK0oLGjzjKNvfs6j/kJLrXckZmokj0rRazHZ7cBhug=;
	b=bB0N3w0ZAMtH6enlJ86lm00ZUIc7qgotePSHUJqVF+DfRrIDFnF/cyLv8K3tFehN
	4rSq+Rs/MM+EJgb/AtE2pCPNhpb6cL7/NjtlKR9Rui/FU78Nv0S+I3n/hZy5nFyJh+m
	YaTJ6iMmvv+dV3YTBSnpvz4O5rPRTxqgPt/7dBN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a553868-8847ab98-2bd3-49d6-b586-28dbb20912d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 736080642dc4bfc12a7a022ae2d438adc9946154bdd931eac3be6d46239e399b
Date: Sun, 14 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660446652
