Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1467010E9
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 03:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649648878;
	h=To:Subject:From:Message-Id:Date;
	bh=kINM2ZMb9MDd+cV6xQVJJ/UofwS+Ne7b4OugeTQ8JRg=;
	b=TKIwzZPugzidSr1vxqKmJtn8WTsOkWWfMGONNENb6ygS8h2G262M2jhveYdweTSg
	nGC2dERBrdXcEo4r/3l0Kr5OFxgUhbWaCdtzmxnG0N5D5+jas7WgI9XhQlSvtZWBZvQ
	F0qccLiFtE1yfOIvbhFaMTYPX/sN4UKpTdXuovcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649648878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kINM2ZMb9MDd+cV6xQVJJ/UofwS+Ne7b4OugeTQ8JRg=;
	b=Ha2UBvjzAXLO+KB42hIw1Alzgj4hWkLACA/XPoJ0FuhnTyCSQpsrNozTAiJ+pYy+
	fn2+wf2lH12gYOVmbRORyEc4BIhVLydqTvL5PgWa+sWJAlqY1xoTeABpqLIBCs0uFua
	qcp3jA487no0cs2LNQfA3RhBDXvAPlO3xkW2ZA+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018016bc4296-5a2e7f81-5a44-46d6-8b09-b300db4c2fc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b140afacb0135db79cd668a6093f661757ea98bd678a874cc29e7c2a220e47dd
Date: Mon, 11 Apr 2022 03:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649648878
