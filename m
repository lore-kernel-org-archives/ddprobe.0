Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18562624
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657191412;
	h=To:Subject:From:Message-Id:Date;
	bh=z1DMtB3N8rJh/jRGvC6lyk0HkFfO8EsW1L+s6+h+rxk=;
	b=MSR7Q/M9jrfj2j6K4bNt268NF1KvWvHQhqKfpJq7U4E3so8GDHPhu/4pvnw1ZXEw
	RhQ6oB08bb0pGrm3ADQOIPfjImAfoL/98S5HValsox9eoLqRzPLvAIGr2v63zRADaec
	JrXHyvQUZ6xTXrGkPsCKVrksE1Fg6xBJNgygtzdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657191412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z1DMtB3N8rJh/jRGvC6lyk0HkFfO8EsW1L+s6+h+rxk=;
	b=YtE+5NeXxxEzdHeMqCE3MXD58tCek8y1D6K6bTiGmfyIfoDU+WtjEmx0nQM2bX3i
	O8rKP3yir0GS4Tkt0vbCZw6sq5y6kmQLuc3E32F6WJmf5XTWm/ZpqR0PDpgbfBfNWw1
	hfmPyI6N+9Y4rgw4Ml6cgcpCIkxeM09Ucgw63Vcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d84e3266-d9fc7424-0736-4e68-852a-ec41898bb762-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad1e03ae9eec133d3ac99b4c7dd6948fe35a285d7e29472f33b6ca3c5ac5aa69
Date: Thu, 7 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657191412
