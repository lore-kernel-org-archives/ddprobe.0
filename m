Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222542F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656265012;
	h=To:Subject:From:Message-Id:Date;
	bh=elAg4OL+/gYf68HPgjXYJojN74gvI0FJweb8yt3NVC8=;
	b=Zgqh+7wBlLHloDGCWiI8QFg+V9I32CONAMpAH+zBydcW0Y5htqx5lbjjs9dtVFjr
	9DwcejMP2VfHQLRq/z3nHEKUf2mChXIu/UhyA2D+fref7qfa9tXtAZ92jLxeOssiQSv
	IDjONhoFbY+N0LYAdnhSm+Zr7Fvjt/G79PyBqsW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656265012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=elAg4OL+/gYf68HPgjXYJojN74gvI0FJweb8yt3NVC8=;
	b=AQCBu4Vdll67u7xhGQJ3s2dd1jWLkF5R5t/CWccw4dk1cD7xDoW2X/hUA5X7WbKE
	jz9Ytmav56YepQGe/mdEmF8+TcBkUPiRv7Y96QARqXtTtFk1ULScqSDEwdTVyuKElmL
	wA+p9kbUEoc12S/ly6a72hW6w584u6eYT3BXuDQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a116743c-d57229f1-6123-4bfd-9ea9-a7997abd9c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 292a7998664cc326b92429004226eed6b390ddf105b69baebe4ce508f1bc8a38
Date: Sun, 26 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656265012
