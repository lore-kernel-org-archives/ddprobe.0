Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69137A52
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660522852;
	h=To:Subject:From:Message-Id:Date;
	bh=wXSzM0sx3sPptqpmTTnvLj4iplj5ra71ZxZ7OHAzx2k=;
	b=I6maDQsddIO+EvwE5AK4UiDfcta2e4Pskr3oIScEFLBnZy9VfS7U+s4Fuk94K8Zn
	fi5GUprzYAh4nXEtZ8npbgmVRHX5aav1R9X+TWwIZiuSi8tYRXOxMNVCf5NY/VGoB+q
	SdqrlUdAEEE5jzcPpYAJg9sTb6A8/FU1RFIHNwgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660522852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wXSzM0sx3sPptqpmTTnvLj4iplj5ra71ZxZ7OHAzx2k=;
	b=NlE2PhDxoWvSHXIpuvp98EDqXaLllS7AVqXjKv1BRVFExVVSJrmzVtdyWI56tUKa
	tHJcVuhRDd1oqJV7oE5pOjC4U7wPN8wMC68eYjvQI+IxVPMAA4+N8429+U2e5a8i7mH
	9h8aYYPFJZTrQR+k65/KgIHcid0Hfk1yEHWDiuMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829edff0f5-bb3c3206-f230-4265-a117-731435e70781-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2139f7c6618238a49fd903fe9e64859fe689b3676ecee8ae0e14fb714540b9ec
Date: Mon, 15 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660522852
