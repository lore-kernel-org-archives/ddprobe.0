Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA3A20E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660980652;
	h=To:Subject:From:Message-Id:Date;
	bh=iJTmqvB/nqALG5XGAevQeHQVGT9DVn6riYjvl6zM6Ck=;
	b=MvrdwU43dtHM1OmQY86FLSBmN1DDY/KQl+KWvgclotCWYylSX0rmXVTmDwJrmrTz
	nRMQjZPdhC+Ql2VYYZUVF9N/JTyW75dIHpK/mL/5LAn6oT5S8Mw5cIoMmgqSKcrGE3o
	zBFUYUpaaPlJjvvtT6RRCRXqKYb/N3Pwjmn1IJ/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660980652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJTmqvB/nqALG5XGAevQeHQVGT9DVn6riYjvl6zM6Ck=;
	b=cneIy+2WEYHBqqOerEYSmIq9DneTo0QxKwwcqkjtu4pADM3xB5YUd18GRk0mPVnT
	OdpsJgdl2YOJMX2VOCF2gXBXIE6a6DG9hQ4jDDlt9odOc2bRjXijV2hpilaltSczIGD
	7u3l+AMCFwmk2S3ULKdQDDvq7Z2fXSzCfF3BqeWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba296a08-a5414321-06c2-4349-959a-3d86b8b49492-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4c5c9dbe77579311befbb911c2ad9cfadae55e2764107aed2ba459483221cb7
Date: Sat, 20 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660980652
