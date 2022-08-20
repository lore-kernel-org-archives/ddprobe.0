Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B30E20E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660982452;
	h=To:Subject:From:Message-Id:Date;
	bh=JQOC4I47Um2uwJQOa8nIEGnIWu/f/aqtTaYeHpovmF8=;
	b=ibOYcLCQGXBdcYD4LWEKncya4AyBtoloRE/t9aZ6BfXIqigEX0A20rSZz90MQnyw
	j4N3cDlLtbxfHg3U6cebKDKiRUhNcBkJhw8eU2D+98ladn5ucq6RFdEgZkrmUQBH+QF
	vjEuK29N8KkkA2Q9D+RwbTqMlnYsZr+Vstmz3Qco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660982452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQOC4I47Um2uwJQOa8nIEGnIWu/f/aqtTaYeHpovmF8=;
	b=M0EYEZRakVMCGOKUfulwx1ZiaQdMSOjvZqeQdP0gE0+LghOSY+UGaDoDJ80KiXAp
	W2CXRnZbLae9Gob1tjACSlxz26Yp+lMAk2v7bsLn/eroOGtOXl4EPGhajwwSFSVRGjL
	bXSmyAxGydMGypiiPvVNldVDglb40pfWJ+cDIV8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba44e15c-78dfc7df-ebfb-4107-8417-d9b82340fb03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55e5ce2e7c080486f8b0835d3817209a4611a19a65670377ce645cfb486b6607
Date: Sat, 20 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660982452
