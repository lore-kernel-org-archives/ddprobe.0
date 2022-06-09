Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE66E20E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 04:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654748279;
	h=To:Subject:From:Message-Id:Date;
	bh=tMkeSOHdGdF0pk3BMPyjdWnZpQ+CLV7ik6DfPKafujk=;
	b=jnyABVTCk8onE73H5VidaFdpRZRWre3L99cUvXoPGNHx+GZvYA249EpRGjCTJjxt
	JRXHbf7w0F2D/L9ZyfZyJYkbz6RxdzMcGHHrtwdm0h6+WJvpD37PtQPsaui0aQPR5YU
	m7493SjBE2YUaczvt24bEL9pmjBEfzj1Oi41krQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654748279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tMkeSOHdGdF0pk3BMPyjdWnZpQ+CLV7ik6DfPKafujk=;
	b=NUxglnsMCY4b04rL7QBOu8sR6GQlG7HS+eSdvfi1gMSgi8KPn+eJsxsxk6wbH7C3
	Eq87n0IsrrFPyY/6VuOeI9ix58BnKJlXEvKyY6hnro23MR/IWR/pKeuKJ3exVBzYnBg
	lU+wkzEe5ezKMUPs09s91C4Fj/i3WSR8zX1TXG74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146aef1d3-39da418c-6696-4e31-8b00-1dda4e0b4b1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dbc167ced5841c5690ba1e5418303c8ef2ce8764e6329f44f0e71fa0c669fdd
Date: Thu, 9 Jun 2022 04:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654748279
