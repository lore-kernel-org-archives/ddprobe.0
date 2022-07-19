Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C34B10ED
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658204812;
	h=To:Subject:From:Message-Id:Date;
	bh=djXm0Vad79NPF9QuT9O3S9QgHXQkzt/ZDxKHGV4rang=;
	b=hMEMPoYZ6pL/AoyxA40mDTFg9jY3Chn4yuOjxnlciQIWtcP4W1d8fk9rXyzw2fgs
	SjFq4PQdYeFKoq+mWw3u5wTmWA6l4yOJBfLsHTffdSkysSqQTuErju30SY+6wmYFRWO
	pBS1Rb7dBKVFbSyiQ9A8pksEwXnmXhAXAWLqmlJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658204812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=djXm0Vad79NPF9QuT9O3S9QgHXQkzt/ZDxKHGV4rang=;
	b=I0x0Op6bK3Tg/7GmfZTVDk14EoEQNTq7yvi7mnraZvZMsVYO1RfWRVBTw7YT8+tI
	gV3ukrpG8YkSkH9y3nrakKR0uj0hp0y8fqTb8fDYI674oJneHdRmlSV8rak1NfvfzBD
	PwMQrlQJf/jseL+teSmQKOQrkSOuVRNvNPuO9jrU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214b574cc-c5f3b5f3-cb40-4198-aa30-11ded9ba3364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e6727c92b7be4ac3e3a5bd8a2b518b0e7486b6211cfe4b97e3ddfe7e0b5d182
Date: Tue, 19 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658204812
