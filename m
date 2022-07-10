Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE167A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657452412;
	h=To:Subject:From:Message-Id:Date;
	bh=HDzmiO2StszSX4yA5nF3u3ISMnFNzl96MdHlaYR/0EQ=;
	b=kkk6MCUEaiOD2O8KRzXg7Q387UUA1Tld13guoLzIxHweX74cAvf91PGjhQjGXLqu
	DE/4eR9ZUJLjT/AejtKsjEFTdNCreAnNX0Sa9r042FQzhdDdeud8cvG1xL0b6FLU1z7
	afgStc50cqtzIbg7qBkwgDtEQWzwdPgAXefMpA/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657452412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HDzmiO2StszSX4yA5nF3u3ISMnFNzl96MdHlaYR/0EQ=;
	b=cRDPf9rmXFgNa+BNEY4+Yo3SqQXRxcAmPlPgokVrofkahjeEyK5RnUv9owDW/67g
	og7U7LooZUKbNsdE6rAdOMVuqzcOTjw7zt2KvA6hTk/oA+X9tvts0E1XMluj0zvcBkG
	FFbQVoj21qZa/rB9AgNjPj6L/vWG3yJbprP1dPe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7dcbdde-f8ab5123-d25e-4459-9444-2fa215852744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97267a374fa2955ab9e9d14108d1513dc6411dd79dfdc8e4aa212124d0dcca0d
Date: Sun, 10 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657452412
