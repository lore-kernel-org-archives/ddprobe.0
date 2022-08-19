Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A27328F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660919452;
	h=To:Subject:From:Message-Id:Date;
	bh=cS8mHnrwc45vA9xwnIyyDbRNwDC3GMcnTZb4ITXPzlA=;
	b=QfyxXuJMmb4f1LTiiXOLrB3dEe8UeQURPP4agnegezufluYa0oNJTrzkzKTMiOhG
	TNL42GRw1gzegpVZE9QAxU48Mg1SuU04x2DlLqt9v/gpCvMb5r21OyrC4bgT0PqCaky
	lnBo4uAOCvD0GUxGF2leg0nB7inPP4jldIgbRMXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660919452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cS8mHnrwc45vA9xwnIyyDbRNwDC3GMcnTZb4ITXPzlA=;
	b=LoPhU1I5OYL41PmZ07Z2NMrcOWN/WfPFgq9LVYzN0K49jsdlKbGgbSZD1MpqYILp
	EyEUqgMY7f7hR+19EBMV690IoZaTIS+Os9eU9H19GBFfYAkI2EKN4kzFBT2jzIXYlBd
	OZX1nMQSY6BgCxt2JfAnk745mWZftZC7XMTEe6nY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b68393c8-60f3a27b-d9b0-46e6-86c2-925a8d8a741a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1d5435ffc1bbfa7d011e09214797bba8f46d512f20b258d012458c0fdca4100
Date: Fri, 19 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660919452
