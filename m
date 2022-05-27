Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5763D7C
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 23:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653695339;
	h=To:Subject:From:Message-Id:Date;
	bh=eCA1/Yj+5kx2GwN1rUUw4DuW9u/7BVseEBV4E1X+lJM=;
	b=VBD3hnYnXLcAZWdTN+IzDlqCy5emSQJs6rYNhK9HdlEmA2hWp7h0F+RCR9bmk7qR
	LF0BKwBIcS3ws7nqylMmS038PFnn5V2LIYwrp3DWuw+dBTfIPP6XJ9rso8ZIXjFQB/P
	VMol0vKJR4GrhC9aCGkpU2eE9+x87sc0lrGqTFUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653695339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eCA1/Yj+5kx2GwN1rUUw4DuW9u/7BVseEBV4E1X+lJM=;
	b=SalVmOWMGOIEK/OPV5dgrs/2+HLqfxhXeHIlTgrif9LccBZrPAiFUMm/E21OSNLy
	CTiJWSOO4hLukbMOy4RWi+NbPaitFODoGOZ6IgfiwukD3XdV789SLV0PiEPLKmK2n4K
	OeASbmJLbaMIkDqChB1UWV7c+VXTL1CudptnAugc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107ec5ba0-e6a690a5-4c89-4d88-a549-d6fb336c2b81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adc58766e2ad5b973d6207400f320d82e83309b89efc5fc56ffc78cf1893badc
Date: Fri, 27 May 2022 23:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653695339
