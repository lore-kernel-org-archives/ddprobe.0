Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E47ED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 13:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654264439;
	h=To:Subject:From:Message-Id:Date;
	bh=xl+rXkCOtymWpyFyUhGtfF4lybP0y04D7ntQ6I5h+xA=;
	b=TRJ42pA6WiaEvNPPfvUXGfOkSgzIdETOz4o2QwUkt+3Sd1FvKvrYicDuvbY6KApE
	sj04uZPtcu0KlgN0RKmLg2MXIHZBaFE1O9U653MH5tdn0ach2kCx3xpB4coG3J4QVu6
	kgoi305aHQblDce1w7YtJrtyfZXkk3ktXLImpkaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654264439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xl+rXkCOtymWpyFyUhGtfF4lybP0y04D7ntQ6I5h+xA=;
	b=Yys8zlfEqpYovjueBJ5uWmTVFR2ZAJWeFYSUY7KsrBTJW2HrV78gKlxkP7oEE/Va
	chlu3PatLoEg0yWQvlyfAxyE3SywkDsR7Dey6Yvfk+AbwVznJXabmbVYcPPqcKvJ9Hx
	f7v7mT7tro0VrzVKgFeGLXfTdZ+Q+SvsxLP+l/KM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018129d82230-98d0cc09-b832-490e-8531-f0bf4805d378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e73432b526830ac86e5557d20597204bae6d2d59050655240a915079c0d176dd
Date: Fri, 3 Jun 2022 13:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654264439
