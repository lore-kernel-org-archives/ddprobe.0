Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F410D2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657009612;
	h=To:Subject:From:Message-Id:Date;
	bh=OJmWSKj9CFYg98h2Iy9Wf88mH9O4SVa7xSwipmWxqkM=;
	b=L+fZF9V+Uzh1YH2WoQe1J9BtEO0FYsv34cQR5+yIxE7m9R/Rf2dutF0MNoDPaZ4H
	v5FWxvTnSJtsOYQn9OkgemUwhvi2RFimSVNejE6wxlnULw2zRJzVMBOgwW4C4hJwH7r
	W7bA9es5FqotocAlITK1QgLshwwFPEllkwc+vR6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657009612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OJmWSKj9CFYg98h2Iy9Wf88mH9O4SVa7xSwipmWxqkM=;
	b=bB3tiiOjpwRPDXVJDntLBHUOeM3wJvHKWdGU62jyJBPXrtcL6A1ZJM5DECV2T4sQ
	+JxCViEf0SXFXRxXknMvaEvnBew/aPwUKtu4FO+7qB9ESBZfcrGV1IBhAqbIriqpFmF
	T4F+/paK86+/5keV8amKTYbrZ4tr7KLLK97Z/gjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd7825e9-cad98874-d04d-4bd2-8483-681241727011-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e10876e49f332f6bba5a6566b38515e3d08283f2d5bdb78bad341f3f6dcead9
Date: Tue, 5 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657009612
