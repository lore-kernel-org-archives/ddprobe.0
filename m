Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229BD5393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658262412;
	h=To:Subject:From:Message-Id:Date;
	bh=imzX4DjCjUPrV8oSJ7crBrB76ZJAptE9R5HQCtSpfN4=;
	b=Wg8xJ+QSib2EuHdfR015SjX7fljzVJdrSA8dLAf4oN1yHvbZzemfjt4JhOUtfEq9
	59St0p/8vocFVER3M77pbjsN5/+l6uXIHV0kyeADZbzfJRUOd6op9ok9r/1PqfbaPja
	C1g1YloHdjVLAm0fCJqTNzK2gz0WJFoYqNgE6Uzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658262412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=imzX4DjCjUPrV8oSJ7crBrB76ZJAptE9R5HQCtSpfN4=;
	b=iiW66IGwlnSsWdhnOcRghD6/lDwmglS2F7AHVcqo1C0Q6YRTAVbhjXeat5Bxgot0
	RwSjM0SbV+8TrC4vzjhS8A2M3ZLu49uJxSFNjovVmclks1LqL6cIKnvngIjuOha/eYC
	FTa4FO+0hLm75XdjRWtbwYh8z6MFqaIuqMFCjC6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218245c0b-106faea5-39a0-45c2-aede-5abd370fe232-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a742c9c851398045fc4396044b9eedca160a9dbabeaecce51967be077bcc653
Date: Tue, 19 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658262412
