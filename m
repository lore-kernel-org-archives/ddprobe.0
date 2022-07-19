Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136A11871
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658234212;
	h=To:Subject:From:Message-Id:Date;
	bh=WsjmAzVfr3zv2t4Sj9/W3U4sMU79IBrDQvq1TloBN8M=;
	b=fhvte732CJcOHAgx4rsxkvlAceoJ3taveDOjeozugmS4YDYOMLlqCirUDAe8aHVj
	OwSaZllt1GzvFS9dLManQLNHlSxz4e7zEXzHIvRDSdLC8hZFcrw5sSHIJh0CSiUVZBf
	mwi32POlfpvjc8mPmeNv4bZPhVRr0g89gBnFyq3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658234212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WsjmAzVfr3zv2t4Sj9/W3U4sMU79IBrDQvq1TloBN8M=;
	b=TMKLxFVIIWrIdKChEZ4M5TsItWYe6tbQz4dqse+UVHl0jwqfToSlUmi6EvNpRy/9
	VXSqdxs4rkTxoBx7aMMMkw7sRkwwYb/3Tz0ogbAZ0jvbb0U7riVq0GZfdjPhYiAaS6z
	773PRqTTqmCPvI5rucfdZujlM7M5ou+rD4XIQlKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018216760fe2-df636e13-5205-4889-b794-77ef87c8e293-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 421985bdf2bfdf61c0b88046f48d3290aa5d54a97c487d699d2f0c5cf0a89913
Date: Tue, 19 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658234212
