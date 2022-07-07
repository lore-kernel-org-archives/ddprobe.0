Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD6A7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657205812;
	h=To:Subject:From:Message-Id:Date;
	bh=PYX+1vb5OdIqJ3Zn1tmEZs/Vu2ARsnrdX3waYFASHqk=;
	b=EvVDBOTSXjkl8Vl66TTExfS23WdTFbJcSNE7UB66bgOiONpOdEhgiUp3qGemjb/f
	laIIIWZgvCTSIQIs2A/RD0ZPnE3RVXnf8d8yDaN7TqTTlXSG5+Odk3OkNACVHYSzV5/
	zjlmiP0fN3/OX/Zbo7kkwjFU+TXL19WoGlLkj0bQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657205812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PYX+1vb5OdIqJ3Zn1tmEZs/Vu2ARsnrdX3waYFASHqk=;
	b=QNOoU8KV3cvi0DuYhS6hNxmtxCrh607hqQsq3hgDKylqkPJXIBp1zDBgZhBrfF1Z
	GNhUSUrbL0GwxCCrp8uIn0nxtcjjpUieqOnCKhkCyJ/ChCYaa/0y+EBf+REZmNqAhco
	ynrMMa210eZ+M8HaFab2QyikgwT6HdmxgIJqECWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d929ec27-106f7812-239a-4bb0-9597-86f079a84b0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e74917ec4e67be9949510356293ec8038063ded7d66689b4490ca9d119d733ca
Date: Thu, 7 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657205812
