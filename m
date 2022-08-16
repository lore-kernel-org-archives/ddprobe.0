Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDF71867
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660620652;
	h=To:Subject:From:Message-Id:Date;
	bh=rQ20VGYmv6l2Mg3WxPslcXzdsHcn2rFYNCJB0liYERU=;
	b=SXOcIjs1hUsDWM7OmAhbplf0Wm6pmtCmpirvSAcOdCj16dTFLm1NeSDn6scUszNn
	5vFPZ8RLAxxkPtIZJ/e2kXqVThK9ZKXSnonRwd4GzPU4PeGVTKlLPViE0ctODoqb5JE
	13OdCrTN6NBBd3DALCp/+0zus01mgp1tyQQ5ISAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660620652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rQ20VGYmv6l2Mg3WxPslcXzdsHcn2rFYNCJB0liYERU=;
	b=MWDXPVC0tQPi2ZUxng0gxLgoTQhw9/AUlxvHBUK1mCC9+2FQKX36N/SAVRQCwV9n
	kt5Fjw2i0ZKfZqduYyqg3KoQQ/7ZjzotiN05fF+sSnjkZkICaU22ypQ5oGodLd9rvW6
	di6YvK5qzfvj964dh3cFH7yuG4waAk8pgQsjcV9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a4b4400c-370aa308-2526-499e-af77-9a5dc1573c05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efdfc57422b5dd083bd41c7db1e4bb9cb9ea8138e5f28572c60be86d921ae9c7
Date: Tue, 16 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660620652
