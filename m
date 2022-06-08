Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064A17B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 14:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654700219;
	h=To:Subject:From:Message-Id:Date;
	bh=jhsFzgmf/SR0NXBtGu2fqQ8xY21Zo78lZoIu+vWIDuQ=;
	b=DAx5LQKKD5ZcjtUeA26WfuCPDxWo0YZMjZMTqUbWOLXvDE2hH5cyIap+qOR5aXlL
	PnkNQFvVNfeNixQm80LGKvrhbGMjhDeqkkd40ubJxw4B3Z+3xNGDM+W1HFv1E+thpyO
	TBZCobvnGWmExvJw677XRv6+p8CmA0Qe4CoFzez0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654700219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jhsFzgmf/SR0NXBtGu2fqQ8xY21Zo78lZoIu+vWIDuQ=;
	b=dHXEMBIlpiTub+UKVDcg2+JA84omZRzLnZQs2FOvnohEz2oARBy0bxUe2gtWXlUX
	cCB95X9TecwMvqFHE9zsqoAzleZP5R9nVYr4i1DjQUVHBRZxUmPdWWbvFRaXer0ti4y
	w44ZwYqKOmbHc8JOMDOax314cqAY1yD9BDp8zyKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143d19b81-8931667c-ded0-4227-b11b-1156e83508a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d8d30e75942f1affbc0eacad697a73788af3702b03ce7c6b2f5635ef08b8f6
Date: Wed, 8 Jun 2022 14:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654700219
