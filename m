Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6458F366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660303252;
	h=To:Subject:From:Message-Id:Date;
	bh=gvyOJohollpSJztCMFtiCjpzHkXYX3OeOeMreyeYb7k=;
	b=lcXQCuQZ4vQxv57LpkVpnml8rW4bWCa14eEZ9NBeIhg0RwT0Ybe4lnG5Y9DT34wF
	56nmQCj31APmWRERFX0dCgCp5Tbe1kSRIWwOuE2nZALDF0FWTs20T7ToFg5q9IF93Q/
	phzgvjdyFqjQQ38ufSzCpRxQ8yBYZuAwI0f5aD24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660303252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvyOJohollpSJztCMFtiCjpzHkXYX3OeOeMreyeYb7k=;
	b=AM2DeJ0gkSDwhDsL3CfB+9TAibWWSlhiHdFUgqlbFjAAJ8AjuRH5opHEfn8whGlt
	oGlDcs9V64eldn34sUA9b7pdnFlc74RD5aPJf7ggkgaR2pEvH9xmDJNIuwIMfYYQ2YX
	wwtchx87Jv5peCqoMmNOwHHVGLoDNzcaLrq/fhI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291c91c5e-d055991b-a737-45a7-9f82-ebf18b08f8f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 935bd60f295987f8c553c14e63d5587ed4f2113be64c8d383c57bed91b51d96b
Date: Fri, 12 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660303252
