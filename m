Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6E87C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 22:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654900439;
	h=To:Subject:From:Message-Id:Date;
	bh=9d0SCYujHRo1/4qGpEy0T3jS4hUcotUJ25Ky+0h+g60=;
	b=GuhBYrP39yp5a5df6uMBaNFBSFGwXUef5Y8+h0eKQnDcADyyH+BcG6Zk8swmnlv9
	NlttSycc96SPRfmsL7wFzgNTxmx2AhXLIWo2AbyJ26KBZgzlrjSheEV0tC23y5RsAdP
	cuwRnj4wxCZLexZqnWVlGHcZWgla8T+qK++mBKZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654900439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9d0SCYujHRo1/4qGpEy0T3jS4hUcotUJ25Ky+0h+g60=;
	b=B7fr0c6POp6qIdtJpRAsAFTzQ+Ia6YS0SxnRshhIZa7VdQvL7LW+nyc7zqQGKVsq
	bOI1wynUi38Wij9+w2N7XUSUq4aanJ+FCrsxc7dVS35xz10j4UAy3J8+l38h0+EMcmW
	r0HU9m56D5iRr7J/hY23mCCbLxzilgfqxjHlTV4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fc0b90c-903db088-b550-44d4-ae1b-047f6bc70c2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47c4b358ec0fdb4747c4a181163af5e9d5c5b6da96d67c09a79d6c3bd4af98d
Date: Fri, 10 Jun 2022 22:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654900439
